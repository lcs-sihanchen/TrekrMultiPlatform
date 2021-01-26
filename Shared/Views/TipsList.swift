//
//  TipsList.swift
//  TrekrMultiPlatform
//
//  Created by Chen, Sihan on 2021-01-25.
//

import SwiftUI

struct TipsList: View {
    
    
    // This view creates its own source of truth
    let tips: [Tip]
    
    var body: some View {
        // Iterate each tip and give a view
        // No id in the json file
        // Another way to make sure data is unique
        List(tips, id: \.text) { tip in
            // If there are children on the tip
            if tip.children != nil {
                Label(tip.text, systemImage: "quote.bubble")
            } else {
                
                Text(tip.text)
            }
            
            
        }
    }
    
    
    // Since the data for this view is not being refered to in any other view,
    // We can load the data in this view
    // Initializer pulls tips from the JSON file
    // Populates the array
    init() {
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        
        let data = try! Data(contentsOf: url)
        
        // loading into an array of tip type
        tips = try! JSONDecoder().decode([Tip].self, from: data)
    }
    
}

struct TipsList_Previews: PreviewProvider {
    static var previews: some View {
        // don't need parameters anymore, there is an initializer
        TipsList()
    }
}
