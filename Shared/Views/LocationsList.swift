//
//  LocationsList.swift
//  TrekrMultiPlatform
//
//  Created by Chen, Sihan on 2021-01-25.
//

import SwiftUI

struct LocationsList: View {
    // reference
    @ObservedObject var  store: LocationStore
    var body: some View {
        
        // iterate over the list of locations in the data store
        List(store.places) { location in
            
            // Create a navigation link leading to the detail view
            // Great example of abstraction in action!
            
            NavigationLink(
                destination: LocationDetail(location: location)) {
                
                HStack {
                    Image(systemName: "circle")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 44, height: 44)
                    
                    VStack {
                        Text(location.name)
                        Text(location.country)
                            .font(.subheadline)
                    }
                }
                
            }
            
            
            
            
        }
        .navigationTitle("Locations")
        
    }
}

struct LocationsList_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            LocationsList(store: testStore)
        }
       
    }
}
