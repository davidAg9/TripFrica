//
//  TipsView.swift
//  TripFrica
//
//  Created by Dave Agyakwa on 01/01/2021.
//

import SwiftUI

struct TipsView: View {
    let tips:[Tip]
    init() {
        let tipsJson=Bundle.main.url(forResource: "tips", withExtension: ".json")!
        let data=try!Data(contentsOf: tipsJson)
        tips=try!JSONDecoder().decode([Tip].self, from: data)
    }
    
    var body: some View {
        List(tips,id:\.text,children:\.children){
            tip in
            if tip.children != nil{
            Label(tip.text,systemImage:"quote.bubble")
                .font(.headline)
            }else {
               Text(tip.text)
            }
        }.navigationTitle("Tips")
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
