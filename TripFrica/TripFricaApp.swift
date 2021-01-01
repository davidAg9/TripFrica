//
//  TripFricaApp.swift
//  TripFrica
//
//  Created by Dave Agyakwa on 01/01/2021.
//

import SwiftUI

@main
struct TripFricaApp: App {
    @StateObject var locations=Locations()
    var body: some Scene {
        WindowGroup {
            TabView{
             NavigationView{
                ContentView(location: locations.prime)

            } .tabItem { Image(systemName: "airplane.circle")
                Text("Discover")
            }

             NavigationView{
                WorldView()

            }.tabItem { Image(systemName: "star.fill")
                Text("Locations")
            }

                NavigationView{
                    TipsView()
                }.tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }

            }.environmentObject(locations)
        }
    }
}
