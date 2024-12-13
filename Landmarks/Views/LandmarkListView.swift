//
//  LandmarkListView.swift
//  Landmarks
//
//  Created by Cameron Warner on 12/12/24.
//

import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        NavigationSplitView{
            
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetailView(landmark: landmark)
                } label: {
                    LandmarkRowView(landmark: landmark)                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
        
    }
}

#Preview {
    LandmarkListView()
}
