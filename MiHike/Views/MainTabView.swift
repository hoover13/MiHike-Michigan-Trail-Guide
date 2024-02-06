//
//  MainTabView.swift
//  MiHike
//
//  Created by Min Thu Khine on 2/2/24.
//

import SwiftUI

struct MainTabView: View {
    @State var tabSelection = 1
    
    var body: some View {
        
        TabView(selection: $tabSelection) {
            TrailView(tabSelection: $tabSelection)
                .tabItem {
                    VStack {
                        Image(systemName: "signpost.right.fill")
                        Text("Trails")
                    }
                }
                .tag(1)
            
            MapView(tabSelection: $tabSelection)
                .tabItem {
                    VStack {
                        Image(systemName: "map.fill")
                        Text("Map")
                    }
                }
                .tag(2)
            
            TipsView()
                .tabItem {
                    VStack {
                        Image(systemName: "lightbulb")
                        Text("Tips")
                    }
                }
                .tag(3)
        }
    }
}

#Preview {
    MainTabView()
}
