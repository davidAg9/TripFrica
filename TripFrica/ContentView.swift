//
//  ContentView.swift
//  TripFrica
//
//  Created by Dave Agyakwa on 01/01/2021.
//

import SwiftUI

struct ContentView: View {
    let location:Location
    var body: some View {
        ScrollView{
            VStack{
            Image(location.heroPicture)
            .resizable()
            .scaledToFit()

            Text(location.name)
            .bold()
            .scaledToFill()
            .foregroundColor(.orange)
            .font(.largeTitle).multilineTextAlignment(.center)

            Text(location.country)
            .font(.title2)
            .foregroundColor(.gray)
            .bold()

            Text(location.description).padding(.horizontal)

            Text("Did You Know").bold().padding(.top)
            Text(location.more).padding(.horizontal)
            }
            
        }
        .navigationTitle("Discover")
        .tabItem {
            Image(systemName: "airplane.circle.fill")
            Text("Discover")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabView{
            NavigationView{
            ContentView(location: Locations().prime)

            }.tabItem {
                Image(systemName: "airplane.circle.fill")
                Text("Discover")
            }
        }
    }
}
