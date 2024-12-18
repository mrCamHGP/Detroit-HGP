//
//  BadgeSymbolView.swift
//  Landmarks
//
//  Created by Cameron Warner on 12/19/24.
//

import SwiftUI

struct BadgeSymbolView: View {
    
    static let symboleColor = Color(red: 79.0 / 255, green: 79.0 / 255, blue: 191.0 / 255) //changes color of badge symbol
    
    var body: some View {
        GeometryReader { geometry in
                   Path { path in
                       let width = min(geometry.size.width, geometry.size.height)
                       let height = width * 0.75
                       let spacing = width * 0.030
                       let middle = width * 0.5
                       let topWidth = width * 0.25
                       let topHeight = height * 0.576


                       path.addLines([
                           CGPoint(x: middle, y: spacing),
                           CGPoint(x: middle - topWidth, y: topHeight - spacing),
                           CGPoint(x: middle, y: topHeight / 2 + spacing),
                           CGPoint(x: middle + topWidth, y: topHeight - spacing),
                           CGPoint(x: middle, y: spacing)
                       ])
                        
                        path.move(to: CGPoint(x: middle, y: topHeight / 2 + spacing * 3))
                        path.addLines([
                                CGPoint(x: middle - topWidth, y: topHeight + spacing),
                                CGPoint(x: spacing, y: height - spacing),
                                CGPoint(x: width - spacing, y: height - spacing),
                                CGPoint(x: middle + topWidth, y: topHeight + spacing),
                                CGPoint(x: middle, y: topHeight / 2 + spacing * 3)
                ])
            }
                   .fill(Self.symboleColor)
        }
    }
}

#Preview {
    BadgeSymbolView()
}
