//
//  CoffeeView.swift
//  WhatShouldWeEat
//
//  Created by joakim lundberg on 2022-06-07.
//

import SwiftUI

struct CoffeeView: View {
    @State var randomCoffee: Coffee
    
    var body: some View {
        VStack {
            Image("coffee")
                .resizable()
                .frame(width: 100, height: 100, alignment: .center)

            Text(randomCoffee.variety)
                .font(.system(size: 30))
                .fontWeight(.bold)
                .padding(.bottom)
            
            HStack {
                Text("Blend: ")
                    .fontWeight(.bold)
                Text(randomCoffee.blend_name)
            }.padding(.bottom)
            
            HStack {
                Text("Origin: ")
                    .fontWeight(.bold)
                Text(randomCoffee.origin)
            }.padding(.bottom)

            HStack {
                Text("Notes: ")
                    .fontWeight(.bold)
                Text(randomCoffee.notes)
            }.padding(.bottom)            
        }
    }
}

struct CoffeeView_Previews: PreviewProvider {
    static var previews: some View {
        CoffeeView(randomCoffee: Coffee(id: 23, blendName: "Mocca", origin: "Sweden", variety: "Stron", notes: "None", intensifier: ""))
    }
}
