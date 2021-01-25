//
//  TrekrMultiPlatformApp.swift
//  Shared
//
//  Created by Chen, Sihan on 2021-01-25.
//

import SwiftUI

@main
struct TrekrMultiPlatformApp: App {
    
    
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                LocationDetail(location: Location.example)
            }
            
        }
    }
}
