//
//  Hike.swift
//  Landmarks
//
//  Created by Cameron Warner on 12/20/24.
//

import Foundation

struct Hike: Codable, Hashable, Identifiable {
    var id: Int
    let name: String
    var distance: Double
    var difficulty: Int
    var observations: [Observation]
    
    static var formatter = LengthFormatter()
    
    var distanceText: String {
        Hike.formatter
            .string(fromValue: distance, unit: .kilometer)
            }
    
    struct Observation: Codable, Hashable {
        var distanceFromStart: Double
        
        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
    }
        }
