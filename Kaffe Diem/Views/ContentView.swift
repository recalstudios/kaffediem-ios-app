//
//  ContentView.swift
//  Kaffe Diem
//
//  Created by Samuel Aasen on 23/03/2021.
//

import SwiftUI

struct ContentView: View {
    init() {
        // Stop tab bar becoming translucent on scroll
        UITabBar.appearance().shadowImage = UIImage()
        UITabBar.appearance().backgroundImage = UIImage()
        UITabBar.appearance().isTranslucent = true
        
        // Set tab bar background color
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color("UnselectedColor"))
        UITabBar.appearance().backgroundColor = UIColor(Color("AccentColor"))
    }
    
    var body: some View {
        TabView {
            Tab("Bestill", systemImage: "square.and.pencil") {
                BestillView()
            }
            
            Tab("Nyheter", systemImage: "newspaper") {
                NyheterView()
            }
        }
        .tint(Color("BackgroundColor"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
