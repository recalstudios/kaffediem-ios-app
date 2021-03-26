//
//  ContentView.swift
//  Kaffe Diem
//
//  Created by Samuel Aasen on 23/03/2021.
//

import SwiftUI

struct ContentView: View {
    init() {
        UITabBar.appearance().barTintColor = UIColor(Color("AccentColor"))
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color("UnselectedColor"))
    }
    
    var body: some View {
        TabView {
            BestillView()
                .ignoresSafeArea()
                .tabItem {
                Image(systemName: "square.and.pencil")
                Text("Bestill")
                }
            
            NyheterView()
                .ignoresSafeArea()
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("Nyheter")
                }
        }
        .accentColor(Color("BackgroundColor"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
