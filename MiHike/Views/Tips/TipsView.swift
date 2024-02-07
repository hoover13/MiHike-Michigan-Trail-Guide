//
//  ContentView.swift
//  MiHike
//
//  Created by Min Thu Khine on 2/5/24.
//

import SwiftUI 

struct TipsView: View {
    private var people: [String] = ["Pick the right trail difficulty for you.","Bring water, food, and the appropriate equipment.","Know the environment you will be hiking in.","Hike with a friend or be prepared to hike solo.","Have a trip plan.","Dress for the weather.","Have a plan B.","Check for park alerts.","Acclimate to new altitudes.","Let the slowest hiker set the pace.","Keep track of your time and distance.","Yield to uphill hikers.","Take breaks often.","Take your time and watch your step.","Avoid rapid waters and slippery slopes.","Spray bug spray and check for ticks.","Be aware of wildlife."].reversed()
      
    var body: some View { 
        
        ZStack {
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 50) {
                ZStack {
                    ForEach(people.shuffled(), id: \.self) { person in
                        TipsCardView(person: person)
                        
                    }
                }
                
                Image("hiker")
            }
        }
    }
}

#Preview {
    TipsView()
}
