//
//  locations.swift
//  TripFrica
//
//  Created by Dave Agyakwa on 01/01/2021.
//

import Foundation

class Locations :ObservableObject{
    let places:[Location]
    
    var prime:Location{
        places[0]
    }

    init() {
        let placesJson=Bundle.main.url(forResource: "locations", withExtension: ".json")!
        let data=try!Data(contentsOf: placesJson)
        places=try!JSONDecoder().decode([Location].self, from: data)
    }
}
