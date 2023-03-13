//
//  HomeNavigationViewModel.swift
//  PersonalApp
//
//  Created by Greg Ross on 13/03/2023.
//

import Foundation


class HomeNavigationViewModel : ObservableObject {
    
    @Published var path = [HomePath]()
    
    enum HomePath : Hashable {
        case home
        case propertyDetail(UUID)
    }
}
