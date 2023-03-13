//
//  HomeViewModel.swift
//  PersonalApp
//
//  Created by Greg Ross on 13/03/2023.
//

import Foundation


class HomeViewModel : ObservableObject{
    
    private let homeNavVM : HomeNavigationViewModel
    
    let listOfProperties : [Property] = FakeData.shared.listOfProperties
                                         
    
    init(_ homeNavVM : HomeNavigationViewModel) {
        self.homeNavVM = homeNavVM
    }

}
