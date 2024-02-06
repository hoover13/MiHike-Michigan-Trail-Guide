//
//  TrailRow.swift
//  MiHike
//
//  Created by Min Thu Khine on 2/5/24.
//

import SwiftUI

struct TrailRow: View {
    var trail: Trail
    
    var body: some View {
        
        HStack(alignment: .top) {
            Image(trail.imageName)
                .resizable()
                .frame(width: 180, height: 180)
                .padding(5)
                .background(.brown)
                .cornerRadius(20)
            
            VStack(alignment: .leading) {
                Text(trail.name)
                    .font(.title)
                Text("Length: \(trail.length, specifier: "%.1f") miles")
            }
            .frame(maxWidth: UIScreen.main.bounds.width/2)
            .bold()
        }
    }
}

#Preview {
    TrailRow(trail:  Trail(name: "Kensington Metropark", imageName: "5", city: "Milford, MI",latitude: 42.524785600495,longitude: -83.64220030267423, trailType: "Paved", length: 9.5, price: "No Fucking Clue"))
}
