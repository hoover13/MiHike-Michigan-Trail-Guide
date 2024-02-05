//
//  MainTabView.swift
//  MiHike
//
//  Created by Min Thu Khine on 2/2/24.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        
        TabView {
            TrailView()
                .tabItem {
                    VStack {
                        Image(systemName: "signpost.right.fill")
                        Text("Trails")
                    }
                }
            
            MapView()
                .tabItem {
                    VStack {
                        Image(systemName: "map.fill")
                        Text("Map")
                    }
                }
            
            TipsView()
                .tabItem {
                    VStack {
                        Image(systemName: "lightbulb")
                        Text("Tips")
                    }
                }
        }
    }
}

#Preview {
    MainTabView()
}
