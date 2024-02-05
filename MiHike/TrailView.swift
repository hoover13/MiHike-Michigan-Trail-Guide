//
//  TrailView.swift
//  MiHike
//
//  Created by Min Thu Khine on 2/2/24.
//

import SwiftUI

struct TrailView: View {
    @State var selectedItem = 0
    var body: some View {
        ZStack {
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Picker("", selection: $selectedItem) {
                    Text("Proximity")
                        .tag(0)
                    Text("Skill Level")
                        .tag(1)
                    Text("Random")
                        .tag(2)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.bottom)
                
                HStack {
                    Spacer()
                    ZStack {
                        Circle()
                            .frame(width: 80)
                            .foregroundStyle(Color(red: 200/255, green: 221/255, blue: 168/255))
                        Image(systemName: "figure.walk")
                    }
                    Spacer()
                    ZStack {
                        Circle()
                            .frame(width: 80)
                            .foregroundStyle(Color(red: 200/255, green: 221/255, blue: 168/255))
                        Image(systemName: "bicycle")
                    }
                    Spacer()
                    ZStack {
                        Circle()
                            .frame(width: 80)
                            .foregroundStyle(Color(red: 200/255, green: 221/255, blue: 168/255))
                        Image(systemName: "figure.walk")
                    }
                    Spacer()
                }
                
                
                List {
                    
                }
            }
            
        }
    }
}

#Preview {
    TrailView()
}






//Circle()
//    .frame(width: 25)
//    .foregroundStyle(.green)
