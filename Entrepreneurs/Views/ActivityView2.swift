//
//  ActivityView2.swift
//  Entrepreneurs
//
//  Created by Audrey Detsaboun on 03/02/2020.
//  Copyright © 2020 Audrey Detsaboun. All rights reserved.
//

import SwiftUI

struct ActivityView2: View {
    var body: some View {
        
            VStack(alignment: .leading, spacing: 20){
                HStack{
                    Text("")
                        .navigationBarTitle("Activité", displayMode: .inline)
                        .navigationBarItems(trailing: Text("Modifer"))
                }
                
                VStack(alignment: .leading, spacing: 45){
                    
                    
                    HStack{
                        Text("Activité :")
                            .font(.headline)
                            .fontWeight(.heavy)
                        Spacer(minLength: 225)
                        Text("Casino")
                            .multilineTextAlignment(.trailing)
                            
                        Spacer()
                    }
                    
                    
                    HStack{
                        Text("Date de Debut :")
                            .font(.headline)
                            .fontWeight(.heavy)
                        Spacer()
                        Text("7/2/2020, 8:30 AM")
                            .font(.headline)
                            .fontWeight(.regular)
                        .multilineTextAlignment(.trailing)
                            .padding(.trailing, -65.0)
                        Spacer()
                    }
                    
                    HStack{
                        Text("Date de Fin :        ")
                            .font(.headline)
                            .fontWeight(.heavy)
                        Spacer()
                        Text("7/2/2020, 11:30 AM")
                            .font(.headline)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.trailing)
                            .padding(.trailing, -60.0)
                        Spacer()
                    }
                    
                    HStack{
                        
                        Text("Catégorie:")
                            .font(.headline)
                            .fontWeight(.heavy)
                    }
                    
                    Color.red
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
                            Text("RDV client pour validation de la maquette.")
                        }
                    }
                }
                Spacer()
            }
        
        .padding()
    }
}

struct ActivityView2_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ActivityView2()
        }
    }
}



