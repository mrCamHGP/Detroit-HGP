//
//  RotatedBadgeSymbolView.swift
//  Landmarks
//
//  Created by Cameron Warner on 12/19/24.
//

import SwiftUI

struct RotatedBadgeSymbolView: View {
    let angle: Angle
    
    var body: some View {
        
        BadgeSymbolView()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)

    }
}

#Preview {
    RotatedBadgeSymbolView(angle: Angle(degrees: 5)) // changes the angle 
}
