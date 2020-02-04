//
//  CreateCustomerView.swift
//  Entrepreneurs
//
//  Created by Audrey Detsaboun on 03/02/2020.
//  Copyright © 2020 Audrey Detsaboun. All rights reserved.
//


import SwiftUI

struct CreateCustomerView: View {
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
                                        Text("Ajouter une image")
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
                        VStack{
                            HStack{
                                Text("lastName:")
                                TextField("lastName", text: $lastName)
                                    
                                    .border(Color.gray).foregroundColor(.primary)
                            }
                            
                            HStack{
                                Text("firstName:")
                                TextField("PrélastName", text: $firstName)
                                    .border(Color.gray)
                            }
                            HStack{
                                Text("firm:")
                                TextField("firm", text: $firm)
                                    .border(Color.gray)
                            }
                            HStack{
                                Text("phoneNumber:")
                                TextField("phoneNumber", text: $phoneNumber)
                                    .border(Color.gray)
                            }
                            HStack{
                                Text("Mail:")
                                TextField("mail", text: $mail)
                                    .border(Color.gray)
                            }
                            HStack{
                                Text("direction:")
                                TextField("direction", text: $direction)
                                    .border(Color.gray)
                            }
                            HStack{
                                Text("Note:")
                                TextField("Note Particulier", text: $note)
                                    .border(Color.gray)
                            }
                        }
                    }
                    .padding()
                    .font(.title)
                    Spacer()
                }
            }
        
    }
}

struct CreateCustomerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CreateCustomerView()
        }
    }
}
