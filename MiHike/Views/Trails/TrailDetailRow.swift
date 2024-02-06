//
//  TrailDetailView.swift
//  MiHike
//
//  Created by Min Thu Khine on 2/5/24.
//

import SwiftUI

struct TrailDetailRow: View {
    var trail: Trail
    var sfSymbols = ["pawprint.fill", "figure.hiking", "toilet.fill", "figure.fishing", "water.waves", "figure.walk"]
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(trail.name)
                .bold()
            HStack {
                Image(trail.imageName)
                    .resizable()
                    .frame(width: 120, height: 120)
                    .padding(5)
                    .background(.brown)
                    .cornerRadius(20)
                VStack(alignment: .leading) {
                    Text(trail.name)
                    Text("Length: \(trail.length, specifier: "%.1f") miles")
                    HStack {
                        Text("Skill Level:")
                        Circle()
                            .frame(width: 20)
                            .foregroundStyle(trail.skillLevel)
                    }
                    Text("Trail Type: ")
                    Text("Price: \(trail.price)")
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
    }
}

#Preview {
    TrailDetailRow(trail: Trail(name: "Kensington Metropark", imageName: "Kensington", city: "Milford, MI", skillLevel: .green,latitude: 42.524785600495,longitude: -83.64220030267423, trailType: "Paved", length: 9.5, price: "State Pass"))
}
