//
//  PersonalAppApp.swift
//  PersonalApp
//
//  Created by Greg Ross on 13/03/2023.
//

import SwiftUI

@main
struct PersonalAppApp: App {
    
    @StateObject private var appVM = AppViewModel()
    
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $appVM.selectedTab) {
                HomeNavigationContainer()
                    .tabItem {
                        VStack{
                            Image(systemName: "house")
                            Text("Home")
                        }
                    }
                    .tag(AppViewModel.Tab.home)
                
                FavouritesNavigationContainer()
                    .tabItem {
                        VStack{
                            Image(systemName: "heart")
                            Text("Favourites")
                        }
                    }
                    .tag(AppViewModel.Tab.favourites)
                
                BookingsTabView()
                    .tabItem {
                        VStack{
                            Image(systemName: "list.bullet.rectangle.portrait")
                            Text("Bookings")
                        }
                    }
                    .tag(AppViewModel.Tab.bookings)
                
                AccountTabView()
                    .tabItem {
                        VStack{
                            Image(systemName: "person")
                            Text("Account")
                        }
                    }
                    .tag(AppViewModel.Tab.account)
                
            }
            
        }
    }
}



