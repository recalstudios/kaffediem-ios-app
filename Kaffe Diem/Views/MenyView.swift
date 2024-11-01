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
                        DrinkView(name: "Svart kaffe", description: "Kaffebønner utblandet i vann", image: "TestImage", cost: 5)
                        DrinkView(name: "Espresso", description: "Varmt vann presset gjennom kaffe", image: "TestImage", cost: 10)
                        DrinkView(name: "Cappuccino", description: "Mørk kaffe med varm melk", image: "TestImage", cost: 10)
                        DrinkView(name: "Americano", description: "Fortynnet espresso", image: "TestImage", cost: 10)
                        DrinkView(name: "Mocha", description: "Espresso med sjokoladepulver", image: "TestImage", cost: 10)
                        DrinkView(name: "Latte", description: "Espresso med melk", image: "TestImage", cost: 10)
                        DrinkView(name: "Varm sjokolade", description: "Kakaopulver blandet med vann", image: "TestImage", cost: 10)
                        DrinkView(name: "Islatte", description: "Kald latte med isbiter", image: "TestImage", cost: 10)
                        DrinkView(name: "Helgekos", description: "Frappe med kaffesmak", image: "TestImage", cost: 10)
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
