//
//  CombiningViewsSwiftUIApp.swift
//  CombiningViewsSwiftUI
//
//  Created by Ary Sugiarto on 09/11/22.
//

import SwiftUI

@main
struct CombiningViewsSwiftUIApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
