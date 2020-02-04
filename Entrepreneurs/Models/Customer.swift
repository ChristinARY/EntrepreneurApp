//
//  Customer.swift
//  Entrepreneurs
//
//  Created by Audrey Detsaboun on 03/02/2020.
//  Copyright © 2020 Audrey Detsaboun. All rights reserved.
//

import Foundation

struct Customer: Identifiable {
    var id = UUID()
    var firstName: String
    var lastName: String
    var firm: String?
    var phoneNumber: String
    var mail: String
    var direction: String
    var note: String?
    var customerPhoto: String?
    
    static var allCustomers: [Customer] = []
    
    static let `default` = Self(firstname: "Roger", lastname: "Dupond", firm: "Apple", phoneNumber: "0664738493", mail: "roger.dupond@apple.com", direction: "3 rue du Chapelier 93400 Montreuil", note: "http://www.note.com/profile/rogerdupond")
    
    init(firstname: String, lastname: String, firm: String?, phoneNumber: String, mail: String, direction: String, note: String?){
        self.firstName = firstname
        self.lastName = lastname
        self.firm = firm
        self.phoneNumber = phoneNumber
        self.mail = mail
        self.direction = direction
        self.note = note
    }
}
