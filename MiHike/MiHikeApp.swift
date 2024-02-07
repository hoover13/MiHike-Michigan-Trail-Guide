//
//  MiHikeApp.swift
//  MiHike
//
//  Created by Min Thu Khine on 2/1/24.
//

import SwiftUI

@main
struct MiHikeApp: App {
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
                .environmentObject(TrailFilter())
        }
    }
}
