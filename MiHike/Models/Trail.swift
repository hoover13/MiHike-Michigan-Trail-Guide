//
//  Trail.swift
//  MiHike
//
//  Created by Min Thu Khine on 2/2/24.
//

import Foundation
import SwiftUI

struct Trail: Identifiable {
    
    let id = UUID()
    var name: String
    var imageName: String
    var city: String
    var skillLevel: Color
    var latitude: Double
    var longitude: Double
    var trailType: String
    var length: Double
    var price: String
    
}

var trails: [Trail] = [
    Trail(name: "Maybury State Park", imageName: "MayburyState", city: "Novi, MI", skillLevel: .green, latitude: 42.43197913979756,longitude: -83.54039853405433, trailType: "Paved", length: 8, price: "State Park Pass"),
    Trail(name: "Bald Mountain", imageName: "Baldmountainloop", city: "Orion Township, MI", skillLevel: .yellow, latitude: 42.74303287050017,longitude: -83.23514290612218, trailType: "Steep hills and rugged terrain", length: 6.7, price: "Permit or State Park Pass"),
    Trail(name: "Paint Creek Trail", imageName: "paintcreek", city: "Rochester, M", skillLevel: .yellow,latitude: 42.767183673349216,longitude: -83.21892268334256, trailType: "Pavement, Gravel", length: 8.9, price: "State Pass"),
    Trail(name: "Dequindre Cut", imageName: "Dequindre", city: "Detroit, MI", skillLevel: .green, latitude: 42.333385466758145 ,longitude: -83.02667005217732 , trailType: "Paved", length: 2, price: "State Pass"),
    Trail(name: "Kensington Metropark", imageName: "Kensington", city: "Milford, MI", skillLevel: .green,latitude: 42.524785600495,longitude: -83.64220030267423, trailType: "Paved", length: 9.5, price: "State Pass")
]

//image , city, skill level, name
