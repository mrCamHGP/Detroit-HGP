//
//  LandmarkListView.swift
//  Landmarks
//
//  Created by Cameron Warner on 12/12/24.
//

import SwiftUI

struct LandmarkListView: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRowView(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkListView()
}
