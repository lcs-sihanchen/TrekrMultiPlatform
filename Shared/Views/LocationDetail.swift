//
//  LocationDetail.swift
//  TrekrMultiPlatform
//
//  Created by Chen, Sihan on 2021-01-25.
//

import SwiftUI

struct LocationDetail: View {
    
    // The location to show detail
    // create a copy of the instance of the structure provided to this view
    let location: Location
    
    var body: some View {
        
        ScrollView {
            
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            
            HStack {
                Text(location.country)
                    .font(.title)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom)
                
                Spacer()

            }.padding(.horizontal)
            
            Text(location.description)
                .padding(.horizontal)
            
            HStack{
                Text("Did you know?")
                    .font(.title3)
                    .bold()
                    .padding(.vertical)
                
                Spacer()
            }.padding(.horizontal)
            
            
      
            
            // Conditionally show travel advisory
            // Not empty
            if !location.advisory.isEmpty{
                // Show something
                // No bottom padding
                Text(location.more)
                    .padding(.horizontal)
                
                HStack {
                    Text("Advisory")
                        .font(.title3)
                        .bold()
                        .padding(.vertical)
                     
                    Spacer()
                }.padding(.horizontal)
                
                Text(location.advisory)
                    .padding([.horizontal, .bottom])
            } else {
                
                // with bottom padding
                Text(location.more)
                    .padding([.horizontal, .bottom])
            }
            
        }
        .navigationTitle(location.name)
        
        
        
        
        
        
    }
    
    
    
    
    
    
}

struct LocationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            // Show the example in the UI
            LocationDetail(location: testStore.places[0 ])
        }
        
    }
}
