//
//  CreateCustomerView2.swift
//  Entrepreneurs
//
//  Created by Audrey Detsaboun on 03/02/2020.
//  Copyright © 2020 Audrey Detsaboun. All rights reserved.
//


import SwiftUI

struct CreateCustomerView2: View {
    @State private var lastName: String = ""
    @State private var firstName: String = ""
    @State private var firm: String = ""
    @State private var phoneNumber: String=""
    @State private var mail: String = ""
    @State private var direction: String=""
    @State private var note: String = ""
    
    /* var customer: [String] = [Customer(lastName: "", firstName: "", firm: "", phoneNumber: "", mail: "", direction: "", note: "")].map { (customer) -> String in
     return "(customer.lastName) (customer.firstName)(customer.firm) (customer.phoneNumber)(customer.mail) (customer.direction) (customer.note)"
     }*/
    
    
    @State private var customer: Customer?

    @State var showImagePicker: Bool = false
    @State var image: Image? = nil
    
    var body: some View {
        
            VStack (spacing: 40) {
                VStack{
                    VStack {
                        HStack{
                            Text("")
                                .navigationBarTitle("Nouveau Contact", displayMode: .inline)
                                .navigationBarItems(trailing: Button(action: {
                                    self.customer = Customer(firstname: self.firstName, lastname: self.lastName, firm: self.firm, phoneNumber: self.phoneNumber, mail: self.phoneNumber, direction: self.direction, note: self.note)
                                                        if let customer = self.customer {
                                                            Customer.allCustomers.append(customer)
                                                            
                                                            self.firstName = ""
                                                            self.lastName = ""
                                                            self.firm = ""
                                                            self.phoneNumber = ""
                                                            self.mail = ""
                                                            self.direction = ""
                                                            self.note = ""
                                                        }
                                                    }) {
                                                        Text("Valider")
                                })
                        }
                        HStack{
                            if image == nil {
                                Image("newContact")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipShape(Circle())
                                .frame(width: 150.0, height:160.0)
                            } else {
                                image?
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipShape(Circle())
                                .frame(width: 150.0, height:160.0)
                            }
                        }
                        
                        HStack{
                            ZStack {
                                VStack {
                                    Button(action: {
                                        withAnimation {
                                        self.showImagePicker.toggle()
                                        }
                                    })
                                    {
                                        Text("+ Ajouter une image")
                                            .fontWeight(.heavy)
                                    }
                                }
                                .sheet(isPresented: $showImagePicker) {
                                    ImagePickerView(image: self.$image)
                                }
                            }
                        }
                        .font(.caption)
                        .foregroundColor(Color.gray)
                    }
                    
                    
                    VStack(spacing: 40) {
                        Form{
                            HStack{
                                Text("Nom")
                                TextField("Nom", text: $lastName)
                                    .foregroundColor(.primary)
                            }
                            
                            HStack{
                                Text("Prénom")
                                TextField("Prénom", text: $firstName)
                            }
                            HStack{
                                Text("Entreprise")
                                TextField("Entreprise", text: $firm)
                            }
                            HStack{
                                Text("Téléphone")
                                TextField("Téléphone", text: $phoneNumber)
                            }
                            HStack{
                                Text("Email")
                                TextField("Email", text: $mail)
                            }
                            HStack{
                                Text("Adresse")
                                TextField("Adresse", text: $direction)
                            }
                            
                            VStack(alignment: .leading) {
                                Text("Notes")
                                TextField(" ...", text: $note)
                                    .padding(.bottom, 100.0)
                                    .foregroundColor(.gray)
                                    .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                            }
                            Spacer()
                        }
                    }
                    .padding()
                    
                    
                    
                }
            }
        
    }
}

struct CreateCustomerView2_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CreateCustomerView2()
        }
    }
}
