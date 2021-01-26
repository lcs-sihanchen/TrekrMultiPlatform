//
//  WorldMap.swift
//  TrekrMultiPlatform
//
//  Created by Chen, Sihan on 2021-01-25.
//

import MapKit
import SwiftUI

struct WorldMap: View {
    // Derived value of source of truth(list of locations)
    // Get a reference to the location store
    // Derived value passed as a parameter
    // @observedObject
    @ObservedObject var store: LocationStore
    
    // Control where the map begins
    // Centre on LCS, wide enough to show most of the eastern north america
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 44.43922, longitude: -78.26571),
                                           // span for the magnitude
                                           span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
    
    var body: some View {
        
        
        
        
        
        // Connect mapview to the property region
        // List of locations and creating a name in closure
        Map(coordinateRegion: $region, annotationItems: store.places) { location in
            
            // For each instance we create an app annotation view
            // Need a location
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longtitude)) {
                
                
                // For each view create a navigation link to go to its detail
                NavigationLink(destination: LocationDetail(location: location)) {
                    // annotate with the image
                    Image(location.country)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 80, height: 40)
                        .shadow(radius: 3)
                    
                    
                }
                
            }
            
            
            
            
            
        }
            .navigationTitle("Map")
    }
}

struct WorldMap_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WorldMap(store: testStore)
        }
        
    }
}
