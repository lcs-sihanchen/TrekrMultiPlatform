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
            
            TabView {
                NavigationView {
                    // So it s not always showing the detail view
                    LocationsList(store: store)
                }.tabItem {
                    Image(systemName: "list.bullet")
                    Text("Locations")
                }
                
                
                
                NavigationView {
                    WorldMap()
                }
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
                
                
                NavigationView {
                    TipsList()
                }
                .tabItem {
                    Image(systemName: "person.fill.questionmark")
                    Text("Tips")
                }
                
                
            }
            
            
            
            
            
            
            
            
            
            
        }
    }
}
