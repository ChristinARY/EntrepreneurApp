//
//  CreateActivityView.swift
//  Entrepreneurs
//
//  Created by Audrey Detsaboun on 03/02/2020.
//  Copyright © 2020 Audrey Detsaboun. All rights reserved.
//

import SwiftUI

struct CreateActivityView: View {

    //var activity: Activity
    
    @State private var activityName = ""
    @State private var clientName = ""
    @State private var notes = ""
    
    
    var body: some View {
       
            Form {
                HStack {
                    Text("Nom")
                    TextField("nom de l'activité", text: $activityName)
                        .foregroundColor(.gray)
                }
//
                DatePicker(selection: .constant(Date()), label: { Text("Date de début") })
                    
                    
                
                
                DatePicker(selection: .constant(Date()), label: { Text("Date de fin") })
                    

                HStack {
                    Text("Privé")
                        .padding(10.0)
                        .background(Color.green)
                    Spacer()
                    Text("Admin")
                        .padding(10.0)
                        .background(Color.blue)
                    Spacer()
                    Text("Travail")
                        .padding(10.0)
                        .background(Color.orange)
                    Spacer()
                    Text("Rdv Pro")
                        .padding(10.0)
                        .background(Color.red)
                }
                .padding(10.0)
                
                HStack {
                    Text("Client")
                    NavigationLink(destination: CreateCustomerView2()) {
                    TextField("nom du client", text: $clientName)
                        .foregroundColor(.gray)
                    .buttonStyle(PlainButtonStyle())
                        
                    }
                }
                
                VStack(alignment: .leading) {
                    Text("Notes")
                    TextField(" ...", text: $notes)
                        .padding(.bottom, 300.0)
                        .foregroundColor(.gray)
                        .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                }
                
            
            }//.edgesIgnoringSafeArea(.top)
            .navigationBarTitle(Text("Nouvelle Activité"), displayMode: .inline)
            
            .navigationBarItems(
                trailing: NavigationLink(destination: ActivityView4()) {
                Text("Valider")
            }.buttonStyle(PlainButtonStyle()))
            .resignKeyboardOnDragGesture()
            
            
        
    }
}

struct CreateActivityView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CreateActivityView()
        }
    }
}
