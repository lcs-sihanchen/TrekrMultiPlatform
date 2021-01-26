//
//  Tip.swift
//  TrekrMultiPlatform
//
//  Created by Chen, Sihan on 2021-01-26.
//

import Foundation

// Can use uuid

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
