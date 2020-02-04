//
//  WeekPlanningView.swift
//  Entrepreneurs
//
//  Created by Audrey Detsaboun on 03/02/2020.
//  Copyright © 2020 Audrey Detsaboun. All rights reserved.
//

import SwiftUI

struct WeekPlanningView: View {
       var body: some View {
            
        HStack{
            
            VStack{
                Text("H")
                .font(.headline)
                .fontWeight(.semibold)
                
                Divider()
                
                .frame(width: 40.0)
                VStack{
                  Text("6")
                  Divider()
                  Text("7")
                  Divider()
                  Text("8")
                  Divider()
                }.font(.footnote)
                VStack{
                  Text("8")
                  Divider()
                  Text("9")
                  Divider()
                  Text("10")
                  Divider()
                }.font(.footnote)
                VStack{
                  Text("11")
                  Divider()
                  Text("12")
                  Divider()
                  Text("13")
                  Divider()
                }.font(.footnote)
                VStack{
                  Text("14")
                  Divider()
                  Text("15")
                  Divider()
                  Text("16")
                  Divider()
                }.font(.footnote)
                VStack{
                  Text("17")
                  Divider()
                  Text("18")
                  Divider()
                  Text("19")
                  Divider()
                }.font(.footnote)
                VStack{
                  Text("20")
                  Divider()
                  Text("21")
                  Divider()
                  Text("22")
                  Divider()
                }.font(.footnote)
                VStack{
                  Text("23")
                  Divider()
                }.font(.footnote)
            }
            
            VStack{
                Text("1")
                .font(.headline)
                .fontWeight(.semibold)
                .padding(.top, 3)
                    
                Rectangle()
                .fill(Color.red)
                .frame(width: 40.0, height: 640.0)
            }.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .padding(.vertical, 10 )
            
            VStack{
                Text("2")
                .font(.headline)
                .fontWeight(.semibold)
                .padding(.top, 3)
                    
                Rectangle()
                .fill(Color.green)
                .frame(width: 40.0, height: 640.0)
            }.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .padding(.vertical, 10 )

            VStack{
                Text("3")
                .font(.headline)
                .fontWeight(.semibold)
                .padding(.top, 3)
                    
                Rectangle()
                .fill(Color(red: 0.33, green: 0.33, blue: 0.33, opacity: 0.3))
                .frame(width: 40.0, height: 640.0)
            }.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .padding(.vertical, 10 )

            VStack{
                Text("4")
                    .font(.headline)
                .fontWeight(.semibold)
                .padding(.top, 3)
                    
                Rectangle()
                .fill(Color.orange)
                .frame(width: 40.0, height: 640.0)
            }.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .padding(.vertical, 10 )
                
            VStack{
                Text("5")
                .font(.headline)
                .fontWeight(.semibold)
                .padding(.top, 3)
                    
                Rectangle()
                .fill(Color.green)
                .frame(width: 40.0, height: 640.0)
            }.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .padding(.vertical, 10 )
                    
            VStack{
                Text("6")
                .font(.headline)
                .fontWeight(.semibold)
                .padding(.top, 3)
                    
                Rectangle()
                .fill(Color(red: 0.33, green: 0.33, blue: 0.33, opacity: 0.3))
                    .frame(width: 40.0, height: 640.0)
            }.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .padding(.vertical, 10 )
                    
            VStack{
                Text("7")
                .font(.headline)
                .fontWeight(.semibold)
                .padding(.top, 3)
                    
                Rectangle()
                .fill(Color.blue)
                .frame(width: 40.0, height: 50.0)
                
                Rectangle()
                .fill(Color.green)
                .frame(width: 40.0, height: 150.0)
                .padding(1.0)
                
                 Rectangle()
                 .fill(Color.red)
                 .frame(width: 40.0, height: 100.0)
                 .padding(1.0)
                
                Rectangle()
                .fill(Color.blue)
                .frame(width: 40.0, height: 100.0)
                .padding(1.0)
                
                 Rectangle()
                .fill(Color(red: 0.33, green: 0.33, blue: 0.33, opacity: 0.3))
                 .frame(width: 40.0, height: 50.0)
                 .padding(1.0)
                
                Rectangle()
                .fill(Color.orange)
                .frame(width: 40.0, height: 100.0)
                .padding(1.0)
                
                 Rectangle()
                 .fill(Color.orange)
                 .frame(width: 40.0, height: 30.0)
                 .padding(1.0)
            }.border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
            .padding(.vertical, 10 )
        }
        .padding(.horizontal, 30.0)
        .padding(.bottom, 20.0)
        
        .navigationBarTitle(Text("Février 2020"), displayMode: .inline)
        .navigationBarItems(
            trailing: NavigationLink(destination: CreateActivityView()) {
            Image(systemName:"text.badge.plus")
        }.buttonStyle(PlainButtonStyle()))
        .resignKeyboardOnDragGesture()
          
            }
        }

struct WeekPlanningView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WeekPlanningView()
        }
    }
}
