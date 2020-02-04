//
//  Activity.swift
//  Entrepreneurs
//
//  Created by Audrey Detsaboun on 03/02/2020.
//  Copyright © 2020 Audrey Detsaboun. All rights reserved.
//

import Foundation

enum ActivityTypes {
    case prive
    case admin
    case travail
    case rdvPro
}

struct Activity: Identifiable {
    var id = UUID()
    var activityName: String
    var begginDate: Date
    var endDate: Date
    var activityType: ActivityTypes
    var activityCustomer: Customer?
    var notes: String?
    
    
    static let `default` = Self(activityName: "App Development", begginDate: Date(timeIntervalSince1970: 1581638400), endDate: Date(timeIntervalSince1970: 1581811200), activityType: .admin, activityCustomer: Customer.default, notes: "code of the Roger App")
    
    init(activityName: String, begginDate: Date, endDate: Date, activityType: ActivityTypes, activityCustomer: Customer?, notes: String?){
        self.activityName = activityName
        self.begginDate = begginDate
        self.endDate = endDate
        self.activityType = activityType
        self.activityCustomer = activityCustomer
        self.notes = notes
    }
}


