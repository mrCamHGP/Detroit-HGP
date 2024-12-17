//
//  ContentView.swift
//  Landmarks
//
//  Created by Cameron Warner on 12/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkListView()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
