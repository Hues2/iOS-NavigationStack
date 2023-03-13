//
//  FavouritesNavigationContainer.swift
//  PersonalApp
//
//  Created by Greg Ross on 13/03/2023.
//

import SwiftUI

struct FavouritesNavigationContainer: View {
        
    @StateObject var favouritesNavVM = FavouritesNavigationViewModel()
    
    var body: some View {
        NavigationStack(path: $favouritesNavVM.path) {
            FavouritesTabView(favouritesNavVM)
                .navigationDestination(for: FavouritesNavigationViewModel.FavouritesPath.self) { path in
                    switch path {
                    case .favourites:
                        FavouritesTabView(favouritesNavVM)
                        
                    case .detail(let id):
                        PropertyDetailsView(id)
                        
                    }
                    
                }
        }
    }
}
