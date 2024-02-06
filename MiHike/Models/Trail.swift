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
//    var skillLevel: Circle
    var latitude: Double
    var longitude: Double
    var trailType: String
    var length: Double
    var price: String
    
}

var trails: [Trail] = [
    Trail(name: "Maybury State Park", imageName: "1", city: "Novi, MI", latitude: 42.43197913979756,longitude: -83.54039853405433, trailType: "Paved", length: 8, price: "State Park Pass"),
    Trail(name: "Bald Mountain", imageName: "2", city: "Orion Township, MI", latitude: 42.74303287050017,longitude: -83.23514290612218, trailType: "Steep hills and rugged terrain", length: 6.7, price: "Permit or State Park Pass"),
    Trail(name: "Paint Creek Trail", imageName: "3", city: "Rochester, M",latitude: 42.767183673349216,longitude: -83.21892268334256, trailType: "Pavement, Gravel", length: 8.9, price: "No Fucking Clue"),
    Trail(name: "Dequindre Cut", imageName: "4", city: "Detroit, MI", latitude: 42.333385466758145 ,longitude: -83.02667005217732 , trailType: "Paved", length: 2, price: "No Fucking Clue"),
    Trail(name: "Kensington Metropark", imageName: "5", city: "Milford, MI",latitude: 42.524785600495,longitude: -83.64220030267423, trailType: "Paved", length: 9.5, price: "No Fucking Clue")
]

//image , city, skill level, name
