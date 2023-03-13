//
//  ListOfProperties.swift
//  PersonalApp
//
//  Created by Greg Ross on 13/03/2023.
//

import Foundation


class FakeData {
    static let shared = FakeData()
    
    private init() {}
    
    let listOfProperties : [Property] = [.init(id: UUID(), name: "Stable House"),
                                         .init(id: UUID(), name: "Castle Bryn"),
                                         .init(id: UUID(), name: "Orchard House"),
                                         .init(id: UUID(), name: "Casa Blanca"),
                                         .init(id: UUID(), name: "Ven Helin")]
}
