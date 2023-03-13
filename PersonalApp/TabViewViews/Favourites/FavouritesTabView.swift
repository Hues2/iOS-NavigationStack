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
        Text("FAVOURITES TAB")

    }
}
