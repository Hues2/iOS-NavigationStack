//
//  AppViewModel.swift
//  PersonalApp
//
//  Created by Greg Ross on 13/03/2023.
//

import Foundation


class AppViewModel : ObservableObject{
    
    @Published var selectedTab: Tab = .home    
    
    enum Tab: Hashable{
        case home
        case favourites
        case bookings
        case account
    }
    
}
