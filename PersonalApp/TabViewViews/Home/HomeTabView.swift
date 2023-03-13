//
//  HomeTabView.swift
//  PersonalApp
//
//  Created by Greg Ross on 13/03/2023.
//

import SwiftUI

struct HomeTabView: View {
    
    @StateObject private var vm : HomeViewModel
    
    init(_ homeNavVM : HomeNavigationViewModel) {
        self._vm = StateObject(wrappedValue: HomeViewModel(homeNavVM))
    }
    
    var body: some View {
        VStack {            
            List {
                ForEach(Array(zip(vm.listOfProperties.indices, vm.listOfProperties)), id: \.0) { (index, property) in
                    NavigationLink(value: HomeNavigationViewModel.HomePath.propertyDetail(property.id)) {
                        HStack{
                            Text("\(property.name)")
                            Spacer()
                            Text("\(index + 1)")
                        }
                    }
                    
                }
            }
        }
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)

    }
}

