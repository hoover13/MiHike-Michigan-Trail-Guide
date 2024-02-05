//
//  SplashScreenView.swift
//  MiHike
//
//  Created by Min Thu Khine on 2/2/24.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    
    var body: some View {
        
        if isActive {
            MainTabView()
        } else {
            ZStack {
                Image("bg")
                    .resizable()
                    .ignoresSafeArea()
                
                Image("logo object")
                    .resizable()
                    .frame(width: 200, height: 200)
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    self.isActive = true
                }
            }
        }
    }
}

#Preview {
    SplashScreenView()
}
