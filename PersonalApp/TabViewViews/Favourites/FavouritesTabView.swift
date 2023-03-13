//
//  FavouritesTabView.swift
//  PersonalApp
//
//  Created by Greg Ross on 13/03/2023.
//

import SwiftUI

struct FavouritesTabView: View {
    
    @StateObject private var favouritesVM : FavouritesViewModel
    
    init(_ favouritesNavVM : FavouritesNavigationViewModel) {
        self._favouritesVM = StateObject(wrappedValue: FavouritesViewModel(favouritesNavVM))
    }
    
    var body: some View {
        VStack {
            List{
                ForEach(Array(zip(favouritesVM.favouriteProperties.indices, favouritesVM.favouriteProperties)), id: \.0) { (index, property) in
                    
                    NavigationLink(value: FavouritesNavigationViewModel.FavouritesPath.detail(property.id)) {
                        HStack {
                            Text("\(property.name)")
                            Spacer()
                            Text("\(index + 1)")
                        }
                    }
                    
                }
            }
        }
        .navigationTitle("Favourites")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}
