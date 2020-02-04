//
//  TimeSpent.swift
//  Entrepreneurs
//
//  Created by Audrey Detsaboun on 03/02/2020.
//  Copyright © 2020 Audrey Detsaboun. All rights reserved.
//

import Foundation

struct Report{
    let activity: String
    let revenue: Int
}

extension Report {
    static func all() ->[Report] {
        return[
            Report(activity: "RdV", revenue: 55),
            Report(activity: "Admin", revenue: 15),
            Report(activity: "Privé", revenue: 5),
            Report(activity: "Travail", revenue: 25)
        ]
    }
}
