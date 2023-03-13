//
//  FavouritesViewModel.swift
//  PersonalApp
//
//  Created by Greg Ross on 13/03/2023.
//

import Foundation


class FavouritesViewModel : ObservableObject{
    
    private let favouritesNavVM : FavouritesNavigationViewModel
    
    init(_ favouritesNavVM : FavouritesNavigationViewModel) {
        self.favouritesNavVM = favouritesNavVM
    }
    
}
