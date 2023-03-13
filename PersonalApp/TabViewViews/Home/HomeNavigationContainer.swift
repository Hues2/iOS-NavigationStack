//
//  HomeNavigationContainer.swift
//  PersonalApp
//
//  Created by Greg Ross on 13/03/2023.
//

import SwiftUI

struct HomeNavigationContainer: View {
    
    @StateObject private var homeNavVM = HomeNavigationViewModel()
    
    var body: some View {
        NavigationStack(path: $homeNavVM.path) {
            HomeTabView(homeNavVM)
                .navigationDestination(for: HomeNavigationViewModel.HomePath.self) { path in
                    switch path {
                    case .home:
                        HomeTabView(homeNavVM)
                        
                    case .propertyDetail(let id):
                        PropertyDetailsView(id)
                    }
                }
        }
    }
}

