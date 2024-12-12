//
//  CircleImage.swift
//  Landmarks
//
//  Created by Cameron Warner on 12/11/24.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        
        Image("turtlerock")
            .clipShape(.circle)
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImage()
}
