//
//  MapView.swift
//  MiHike
//
//  Created by Min Thu Khine on 2/2/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    @Binding var tabSelection: Int
//    @Binding var selectedTrail: Trail
    var trail: Trail
    var body: some View {
        VStack {
            Map()
            
            TrailDetailRow(trail: Trail(name: "Kensington Metropark", imageName: "Kensington", city: "Milford, MI", skillLevel: .green,latitude: 42.524785600495,longitude: -83.64220030267423, trailType: "Paved", length: 9.5, price: "State Pass"))
                .onTapGesture {
                    openMap()
                }
            
        }
    }
    
    func openMap() {
        let latitude: CLLocationDegrees = 37.3349
        let longitude: CLLocationDegrees = -122.00902

        // Create a coordinate.
        let coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)

        // Create a map item.
        let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate))

        // Set the map item name if desired.
        mapItem.name = "Place Name"

        // Launch Maps with the map item.
        mapItem.openInMaps(launchOptions: nil)
    }
}

//#Preview {
//    MapView()
//}
