//
//  StatisticsView.swift
//  Entrepreneurs
//
//  Created by Audrey Detsaboun on 03/02/2020.
//  Copyright © 2020 Audrey Detsaboun. All rights reserved.
//

import SwiftUI

struct StatisticsView: View {
    
    var viewModel = StatisticsViewModel()
    
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    Text("Sélectionner le mois")
                    Spacer()
                    Text("Août")
                }.padding(20)
                Spacer()
                HStack(alignment: .lastTextBaseline){
                    ForEach(viewModel.all(), id: \.activity) { statistic in BarView(statistic: statistic)
                    }
                }
                Spacer()
            }
        }
    }
    
    
    struct BarView: View {
        let statistic: Statistic
        
        var body: some View {
            let value = statistic.revenue / 1
            let yValue = Swift.min(value * 10, 300)
            
            return VStack {
                Text(String(statistic.revenue))
                Text("%")
                Rectangle()
                    .fill(statistic.revenue > 50 ? Color.red : Color.gray)
                    .frame(width: 80, height:CGFloat(yValue))
                Text(statistic.activity)
                
            }.navigationBarTitle(Text("Statistiques d'août 2019"), displayMode: .inline).navigationBarItems(
                trailing: Image(systemName:"paperclip"))
        }
    }
}

struct StatisticsView_Previews: PreviewProvider {
    
    static var previews: some View {
        StatisticsView(viewModel: StatisticsViewModel())
    }
}

