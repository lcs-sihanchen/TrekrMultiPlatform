//
//  WorldMap.swift
//  TrekrMultiPlatform
//
//  Created by Chen, Sihan on 2021-01-25.
//

import MapKit
import SwiftUI

struct WorldMap: View {
    
    // Control where the map begins
    // Centre on LCS, wide enough to show most of the eastern north america
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 44.43922, longitude: -78.26571),
                                           // span for the magnitude
                                           span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
    
    var body: some View {
        
        // Connect mapview to the property region
        Map(coordinateRegion: $region)
            .navigationTitle("Map")
    }
}

struct WorldMap_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WorldMap()
        }
        
    }
}
