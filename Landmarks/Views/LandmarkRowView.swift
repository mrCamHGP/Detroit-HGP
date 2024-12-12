//
//  LandmarkRowView.swift
//  Landmarks
//
//  Created by Cameron Warner on 12/12/24.
//

import SwiftUI

struct LandmarkRowView: View {
    
    var landmark : Landmark
    var body: some View {
        HStack{
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            
            Text(landmark.name)
            
            Spacer()
        }// End of HStack
    }
}

#Preview() {
    LandmarkRowView(landmark: landmarks[0])
    LandmarkRowView(landmark: landmarks[1])
}



