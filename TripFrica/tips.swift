//
//  tips.swift
//  TripFrica
//
//  Created by Dave Agyakwa on 01/01/2021.
//

import Foundation
struct Tip:Decodable {
    let text:String
    let children:[Tip]?
}
