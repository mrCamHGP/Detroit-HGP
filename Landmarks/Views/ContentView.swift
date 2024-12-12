//
//  ContentView.swift
//  Landmarks
//
//  Created by Cameron Warner on 12/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            MapView()
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                HStack{
                    Text("Joshua Tree National Park")
                    Spacer()
                    Text("California")
                }// End of HStack
                .font(.subheadline)

                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }// End of VStack
            .padding()
            Spacer()
        }// End of VStack
    }
}

#Preview {
    ContentView()
}
