//
//  FavouritesViewModel.swift
//  PersonalApp
//
//  Created by Greg Ross on 13/03/2023.
//

import Foundation


class FavouritesViewModel : ObservableObject{
    
    private let favouritesNavVM : FavouritesNavigationViewModel
    
    let favouriteProperties = Array(FakeData.shared.listOfProperties[0..<2])
    
    init(_ favouritesNavVM : FavouritesNavigationViewModel) {
        self.favouritesNavVM = favouritesNavVM
    }
    
}
