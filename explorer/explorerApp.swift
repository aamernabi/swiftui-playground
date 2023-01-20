//
//  explorerApp.swift
//  explorer
//
//  Created by Lelafe on 25/12/22.
//

import SwiftUI

@main
struct explorerApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
