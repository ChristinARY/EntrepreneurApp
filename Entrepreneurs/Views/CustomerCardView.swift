//
//  CustomerCardView.swift
//  Entrepreneurs
//
//  Created by Audrey Detsaboun on 03/02/2020.
//  Copyright © 2020 Audrey Detsaboun. All rights reserved.
//

import SwiftUI

struct CustomerCardView: View {
    
    var body: some View {
        
                VStack (spacing: 40) {
                    VStack{
                        HStack{
                            Image("image")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .clipShape(Circle())
                                .frame(width: 150.0, height:160.0)
                        }
                        
                        VStack(spacing: 10) {
                            HStack{
                                Text("Steve")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Text("JOBS")
                                    .font(.headline)
                                    .fontWeight(.bold)
                            }
                            HStack{
                                Text("APPLE")
                                    .font(.headline)
                                    .fontWeight(.bold)
                            }
                        }
                        HStack {
                            Image(systemName: "envelope")
                            Text(" ")
                            Image(systemName: "phone.arrow.up.right")
                            Text(" ")
                            Image(systemName: "message")
                            Text(" ")
                            Image(systemName: "phone.circle")
                        }
                    }
                    
                    VStack(spacing: 40) {
                        Form{
                            HStack{
                                Text("Entreprise")
                                .fontWeight(.semibold)
                                Spacer()
                                Text("Apple")
                            }
                            HStack{
                                Text("Téléphone")
                                .fontWeight(.semibold)
                                Spacer()
                                Text("+336 765 654 65")
                            }
                            HStack{
                                Text("Email")
                                .fontWeight(.semibold)
                                Spacer()
                                Text("steve.jobs@apple.com")
                            }
                            HStack{
                                Text("Adresse")
                                .fontWeight(.semibold)
                                Spacer()
                                Text("2 rue de la pomme, \r 94500 Montreuil")
                                    .multilineTextAlignment(.trailing)
                            }
                            Spacer()
                            
                            VStack(alignment: .leading){
                               
                                    Text("Note")
                                        .font(.headline)
                                        .fontWeight(.semibold)
                                    Text("Contrat Itunes terminé, contrat Safari en cours de réalisation.")
                                    .padding(.bottom, 100.0)
                            }
                        }
                    }
                    .padding()
                }.navigationBarTitle("Contact", displayMode: .inline)
                .navigationBarItems(trailing: Text("Modifer"))
            
        
    }
}

struct CustomerCardView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            CustomerCardView()
        }
    }
}
