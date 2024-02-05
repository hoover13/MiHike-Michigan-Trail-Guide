//
//  ContentView.swift
//  MiHike
//
//  Created by Min Thu Khine on 2/5/24.
//

import SwiftUI 

struct TipsView: View {
    private var people: [String] = ["Research the trail and weather conditions before you go.","Wear moisture-wicking clothes and sturdy, comfortable hiking boots or shoes.","Carry a backpack with essentials like water, snacks, a map, a compass, and a first-aid kit.","Drink plenty of water before, during, and after your hike.","Use sunscreen, sunglasses, and a hat to protect yourself from sunburn.","Begin your hike early in the morning to avoid the hottest part of the day and to have enough daylight."].reversed()
      
    var body: some View { 
        VStack {
            ZStack {
                ForEach(people.shuffled(), id: \.self) { person in
                    TipsCardView(person: person)
                }
            }
            Text("Swipe")
                .font(.largeTitle)
                .bold()
        }
    }
}

#Preview {
    TipsView()
}
