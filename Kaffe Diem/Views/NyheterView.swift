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
            ZStack {
                Color("BackgroundColor")
                    .ignoresSafeArea()
                VStack {
                    Image("Liquid")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .ignoresSafeArea()
                    Spacer()
                }
            }
        }
    }
}

struct NyheterView_Previews: PreviewProvider {
    static var previews: some View {
        NyheterView()
    }
}
