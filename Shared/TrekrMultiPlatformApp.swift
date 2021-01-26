//
//  TrekrMultiPlatformApp.swift
//  Shared
//
//  Created by Chen, Sihan on 2021-01-25.
//

import SwiftUI

@main
struct TrekrMultiPlatformApp: App {
    
    // runs initializer
    @StateObject var store = LocationStore()
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                // So it s not always showing the detail view
                LocationsList(store: store)
            }
            
        }
    }
}
