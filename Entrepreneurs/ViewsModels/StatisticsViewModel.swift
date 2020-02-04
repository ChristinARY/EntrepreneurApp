//
//  StatisticsViewModel.swift
//  Entrepreneurs
//
//  Created by Audrey Detsaboun on 03/02/2020.
//  Copyright © 2020 Audrey Detsaboun. All rights reserved.
//

import Foundation

struct StatisticsViewModel {
    
    func all() -> [Statistic] {
        return[
            Statistic(activity: "RdV", revenue: 55),
            Statistic(activity: "Admin", revenue: 15),
            Statistic(activity: "Privé", revenue: 5),
            Statistic(activity: "Travail", revenue: 25)
        ]
    }
}
