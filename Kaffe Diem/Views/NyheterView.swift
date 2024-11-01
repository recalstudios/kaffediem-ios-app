//
//  NyheterView.swift
//  Kaffe Diem
//
//  Created by Samuel Aasen on 23/03/2021.
//

import SwiftUI

struct NyheterView: View {
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                Color("BackgroundColor")
                    .ignoresSafeArea()
                
                ScrollView {
                    Spacer()
                        .frame(height: 230.0)
                    
                    NyhetView(title: "Konkurranse!", description: "Gjett antall «Alt blir bra hjerter» og du kan vinne en valgfri drikke. Prøv gjerne vår nye milkshake «Love Shake» Lik bildet på Instagram og legg inn svar i kommentarfeltet. Vinner trekkes torsdag 25 februar kl 11:00. Lykke til.", image: "TestImage")
                    
                    NyhetView(title: "Konkurranse!", description: "Tagg din «Kaffevenn» og bli med i trekningen av hver deres valgfrie kaffe+vaffel. Vinneren trekkes torsdag 04/02/21 kl. 11. Lykke til.", image: "TestImage")
                    
                    Spacer()
                        .frame(height: 100)
                }
                
                VStack {
                    ZStack {
                        Image("Liquid")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .ignoresSafeArea()
                        Text("Nyheter")
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

struct NyheterView_Previews: PreviewProvider {
    static var previews: some View {
        NyheterView()
    }
}
