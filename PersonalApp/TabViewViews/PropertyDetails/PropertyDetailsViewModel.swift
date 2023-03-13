//
//  PropertyDetailsViewModel.swift
//  PersonalApp
//
//  Created by Greg Ross on 13/03/2023.
//

import Foundation


class PropertyDetailsViewModel : ObservableObject {
    
    @Published private(set) var property : Property? = nil
    private let id : UUID
    
    init(_ id : UUID) {
        self.id = id
        getPropertyDetails()
    }
    
    private func getPropertyDetails(){
        for property in FakeData.shared.listOfProperties{
            if property.id == self.id {
                self.property = property
            }
        }
    }
    
}
