//
//  MapView.swift
//  MiHike
//
//  Created by Min Thu Khine on 2/2/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @EnvironmentObject var trailFilter: TrailFilter
    @Binding var tabSelection: Int
    var trail: Trail
    var sfSymbols = ["pawprint.fill", "figure.hiking", "toilet.fill", "figure.fishing", "water.waves", "figure.walk"]
    var body: some View {
        
        VStack {
            Map() {
                
                if trailFilter.selectedTrail != nil {
                    let tower = CLLocationCoordinate2D(latitude: trailFilter.selectedTrail!.latitude, longitude: trailFilter.selectedTrail!.longitude)
                    Marker(trailFilter.selectedTrail!.name,systemImage: "tree",coordinate: tower)
                        .tint(.green)
                }
            }
            
            if let trail = trailFilter.selectedTrail {
                VStack(alignment: .leading) {
                    Text(trailFilter.selectedTrail!.name)
                        .bold()
                    HStack {
                        Image(trailFilter.selectedTrail!.imageName)
                            .resizable()
                            .frame(width: 120, height: 120)
                            .padding(5)
                            .background(.brown)
                            .cornerRadius(20)
                        VStack(alignment: .leading) {
                            Text(trailFilter.selectedTrail!.city)
                            Text("Length: \(trail.length, specifier: "%.1f") miles")
                            HStack {
                                Text("Skill Level:")
                                Circle()
                                    .frame(width: 20)
                                    .foregroundStyle(trail.skillLevel)
                            }
                            Text("Trail Type: ")
                            Text("Price: \(trailFilter.selectedTrail!.price)")
                        }
                        .frame(maxWidth: UIScreen.main.bounds.width/2)
                    }
                    HStack(spacing: 15) {
                        ForEach(sfSymbols, id: \.self) { symbol in
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke()
                                Image(systemName: symbol)
                            }
                            .frame(width: 30, height: 40)
                        }
                    }
                }
                .padding()
                .onTapGesture {
                    if trailFilter.selectedTrail != nil {
                        openMap(latitude: trailFilter.selectedTrail!.latitude, longitude: trailFilter.selectedTrail!.longitude, name: trailFilter.selectedTrail!.name)
                    }
                }
            }
        }
    }
    
    func openMap(latitude: Double, longitude: Double, name: String) {

        // Create a coordinate.
        let coordinate = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)

        // Create a map item.
        let mapItem = MKMapItem(placemark: MKPlacemark(coordinate: coordinate))

        // Set the map item name if desired.
        mapItem.name = name

        // Launch Maps with the map item.
        mapItem.openInMaps(launchOptions: nil)
    }
}

//#Preview {
//    MapView()
//}
