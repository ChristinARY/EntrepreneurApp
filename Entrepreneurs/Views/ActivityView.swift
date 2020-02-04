//
//  ActivityView.swift
//  Entrepreneurs
//
//  Created by Audrey Detsaboun on 03/02/2020.
//  Copyright © 2020 Audrey Detsaboun. All rights reserved.
//

import SwiftUI

struct ActivityView: View {
    var body: some View {
        
            VStack(alignment: .leading, spacing: 20){
                HStack{
                    Text("")
                        .navigationBarTitle("Activité", displayMode: .inline)
                        .navigationBarItems(trailing: Text("Modifer"))
                }
                
                VStack(alignment: .leading, spacing: 45){
                    
                    
                    HStack{
                        Text("Nom de l'activité :")
                            .font(.headline)
                            .fontWeight(.heavy)
                        Spacer()
                        Text("        Réunion de cadrage")
                        Spacer()
                    }
                    
                    
                    HStack{
                        Text("Date de Debut :")
                            .font(.headline)
                            .fontWeight(.heavy)
                        Spacer()
                        Text("10-07-2019")
                            .font(.headline)
                            .fontWeight(.regular)
                        Spacer()
                    }
                    
                    HStack{
                        Text("Date de Fin :        ")
                            .font(.headline)
                            .fontWeight(.heavy)
                        Spacer()
                        Text("15-02-2020")
                            .font(.headline)
                            .fontWeight(.regular)
                        Spacer()
                    }
                    
                    HStack{
                        
                        Text("Catégorie:")
                            .font(.headline)
                            .fontWeight(.heavy)
                    }
                    
                    Color.orange
                        .frame(width: 380.0, height: 50.0)
                    
                    
                    HStack{
                        Text("Client :")
                            .font(.headline)
                            .fontWeight(.heavy)
                        Spacer ()
                        Text("                          Clément VARIN")
                        Spacer()
                    }
                    
                    HStack{
                        Text("Notes :")
                            .font(.headline)
                            .fontWeight(.heavy)
                    }
                    
                    ZStack{
                        Color.white
                            .frame(width: 380.0, height: 130.0)
                            .border(Color.black, width: 1)
                        HStack{
                            Text("Rdv à 10h30 avec client. Projet en cours. Validation de la maquette ")
                        }
                    }
                }
                Spacer()
            }
        
        .padding()
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ActivityView()
        }
    }
}



