//
//  locations.swift
//  TripFrica
//
//  Created by Dave Agyakwa on 01/01/2021.
//

import Foundation


struct Location :Decodable,Identifiable{
    let id:Int
    let name:String
    let country:String
    let description :String
    let more:String
    let latitude:Double
    let longitude:Double
    let heroPicture:String
    let advisory:String

}
