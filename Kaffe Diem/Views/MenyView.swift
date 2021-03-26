//
//  MenyView.swift
//  Kaffe Diem
//
//  Created by Samuel Aasen on 26/03/2021.
//

import SwiftUI

struct MenyView: View {
    @State var showInfo = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("BackgroundColor")
                    .ignoresSafeArea()
                VStack {
                    ZStack {
                        Image("Liquid")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .ignoresSafeArea()
                        Text("Meny")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color("BackgroundColor"))
                    }
                    .offset(x: 0.0, y: -400)
                    Spacer()
                }
                
                VStack {
                    DrinkView(name: "Svart kaffe", description: "Svart kaffe", image: "TestImage")
                    DrinkView(name: "Espresso", description: "Espresso", image: "TestImage")
                    DrinkView(name: "Cappuchino", description: "Cappuchino", image: "TestImage")
                    DrinkView(name: "Americano", description: "Americano", image: "TestImage")
                    DrinkView(name: "Mocha", description: "Mocha", image: "TestImage")
                    DrinkView(name: "Latte", description: "Latte", image: "TestImage")
                    DrinkView(name: "Varm sjokolade", description: "Varm sjokolade", image: "TestImage")
                    DrinkView(name: "Islatte", description: "Islatte", image: "TestImage")
                    DrinkView(name: "Helgekos", description: "Helgekos", image: "TestImage")
                }
            }
        }
    }
}

struct MenyView_Previews: PreviewProvider {
    static var previews: some View {
        MenyView()
    }
}
