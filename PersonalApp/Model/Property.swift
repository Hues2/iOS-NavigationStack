//
//  Property.swift
//  PersonalApp
//
//  Created by Greg Ross on 13/03/2023.
//

import Foundation


struct Property : Codable, Identifiable, Hashable {
    let id : UUID
    let name : String
}
