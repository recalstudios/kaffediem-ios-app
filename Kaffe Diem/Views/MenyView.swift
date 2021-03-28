//
//  MenyView.swift
//  Kaffe Diem
//
//  Created by Samuel Aasen on 26/03/2021.
//

import SwiftUI

struct MenyView: View {
    init() {
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        UINavigationBar.appearance().shadowImage = UIImage()
    }
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                Color("BackgroundColor")
                    .ignoresSafeArea()
                
                ScrollView {
                    Spacer()
                        .frame(height: 230.0)
                    VStack {
                        DrinkView(name: "Svart kaffe", description: "Svart kaffe", image: "TestImage", cost: 5)
                        DrinkView(name: "Espresso", description: "Espresso", image: "TestImage", cost: 10)
                        DrinkView(name: "Cappuchino", description: "Cappuchino", image: "TestImage", cost: 10)
                        DrinkView(name: "Americano", description: "Americano", image: "TestImage", cost: 10)
                        DrinkView(name: "Mocha", description: "Mocha", image: "TestImage", cost: 10)
                        DrinkView(name: "Latte", description: "Latte", image: "TestImage", cost: 10)
                        DrinkView(name: "Varm sjokolade", description: "Varm sjokolade", image: "TestImage", cost: 10)
                        DrinkView(name: "Islatte", description: "Islatte", image: "TestImage", cost: 10)
                        DrinkView(name: "Helgekos", description: "Helgekos", image: "TestImage", cost: 10)
                    }
                    Spacer()
                        .frame(height: 100)
                }
                
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
                    .offset(x: 0.0, y: -160)
                    Spacer()
                }
                .allowsHitTesting(false)
            }
            .ignoresSafeArea()
        }
        .ignoresSafeArea()
    }
}

struct MenyView_Previews: PreviewProvider {
    static var previews: some View {
        MenyView()
    }
}
