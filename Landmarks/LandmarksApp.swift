//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Harshvardhan Basava on 30/04/21.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
