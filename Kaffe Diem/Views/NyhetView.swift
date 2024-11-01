//
//  NyhetView.swift
//  Kaffe Diem
//
//  Created by Samuel Aasen on 09/04/2021.
//

import SwiftUI

struct NyhetView: View {
    @State var presented = false
    
    var title: String
    var description: String
    var image: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                    .font(.title)
                    .fontWeight(.semibold)
                Spacer()
            }
            Text(description)
        }
        .padding()
        .background(Color("UnselectedColor"))
        .cornerRadius(30)
        .padding()
        .foregroundColor(Color("AccentColor"))
        .sheet(isPresented: $presented) {
            VStack(alignment: .leading, spacing: 25.0) {
                HStack {
                    Text(title)
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Spacer()
                }
                Text(description)
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(40)
                Spacer()
            }
            .padding(30.0)
            .background(Color("BackgroundColor"))
            .foregroundColor(Color("AccentColor"))
            .ignoresSafeArea()
        }
        .onTapGesture {
            presented.toggle()
        }
    }
}

struct NyhetView_Previews: PreviewProvider {
    static var previews: some View {
        NyhetView(title: "Title", description: "Description", image: "TestImage")
    }
}
