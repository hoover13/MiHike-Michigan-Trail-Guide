//
//  TrailView.swift
//  MiHike
//
//  Created by Min Thu Khine on 2/2/24.
//

import SwiftUI

struct TrailView: View {
    @EnvironmentObject var trailFilter: TrailFilter
    @State var selectedItem = 0
    @Binding var tabSelection: Int
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
                        VStack {
                            ZStack {
                                Circle()
                                    .frame(width: 50)
                                    .foregroundStyle(Color(red: 200/255, green: 221/255, blue: 168/255))
                                Image(systemName: "figure.hiking")
                            }
                            Text("Hiking")
                        }
                        Spacer()
                        VStack {
                            ZStack {
                                Circle()
                                    .frame(width: 50)
                                    .foregroundStyle(Color(red: 200/255, green: 221/255, blue: 168/255))
                                Image(systemName: "bicycle")
                            }
                            Text("Skill Level")
                        }
                        Spacer()
                        VStack {
                            ZStack {
                                Circle()
                                    .frame(width: 50)
                                    .foregroundStyle(Color(red: 200/255, green: 221/255, blue: 168/255))
                                Image(systemName: "figure.walk")
                            }
                            Text("Random")
                        }
                        Spacer()
                    }
                    
                    
                    ScrollView {
                        VStack {
                            ForEach(trails) { trail in
                                TrailRow(trail: trail)
                                    .onTapGesture {
                                        self.tabSelection = 2
                                        trailFilter.selectedTrail = trail
                                    }
                            }
                        }
                        
                    }
                }
                .padding()
                
            }
        
        
    }
}

//#Preview {
//    TrailView()
//}






//Circle()
//    .frame(width: 25)
//    .foregroundStyle(.green)
