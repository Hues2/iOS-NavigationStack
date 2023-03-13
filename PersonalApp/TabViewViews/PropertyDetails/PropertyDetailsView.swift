//
//  PropertyDetailsView.swift
//  PersonalApp
//
//  Created by Greg Ross on 13/03/2023.
//

import SwiftUI

struct PropertyDetailsView: View {
    
    @StateObject private var vm : PropertyDetailsViewModel
    
    init(_ id : UUID) {
        self._vm = StateObject(wrappedValue: PropertyDetailsViewModel(id))
    }
    
    var body: some View {
        VStack {
            Text("\(vm.property?.name ?? "NO PORPERTY FOUND WITH THAT ID")")
        }
        .navigationTitle("\(vm.property?.name ?? "Unknown")")
        .navigationBarTitleDisplayMode(.inline)
    }
}

