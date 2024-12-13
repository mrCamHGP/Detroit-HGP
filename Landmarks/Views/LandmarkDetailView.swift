//
//  LandmarkDetailView.swift
//  Landmarks
//
//  Created by Cameron Warner on 12/12/24.
//

import SwiftUI

struct LandmarkDetailView: View {
    var landmark: Landmark
    
    var body: some View {
        ScrollView{
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack{
                    Text(landmark.park)
                    Spacer()
                    Text(landmark.state)
                }// End of HStack
                .font(.subheadline)

                Divider()
                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
            }// End of VStack
            .padding()
            Spacer()
        }// End of ScrollView
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    LandmarkDetailView(landmark: landmarks[0])
}
