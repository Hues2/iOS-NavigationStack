//
//  FavouritesNavigationViewModel.swift
//  PersonalApp
//
//  Created by Greg Ross on 13/03/2023.
//

import Foundation


class FavouritesNavigationViewModel : ObservableObject {
    
    @Published var path = [FavouritesPath]()
    
    
    enum FavouritesPath : Hashable{
        case favourites
        case detail(UUID)
    }
    
}
