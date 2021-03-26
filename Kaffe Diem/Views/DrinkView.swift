//
//  DrinkView.swift
//  Kaffe Diem
//
//  Created by Samuel Aasen on 26/03/2021.
//

import SwiftUI

struct DrinkView: View {
    @State var showDetails = false
    
    var name: String
    var description: String
    var image: String
    
    var body: some View {
        VStack {
            HStack {
                Text(name)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(Color("AccentColor"))
                Spacer()
                Image(systemName: "chevron.right")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(Color("AccentColor"))
                    .font(Font.title.weight(.semibold))
                    .rotationEffect(showDetails ? .degrees(90) : .zero)
                    .animation(.easeInOut)
            }
            .frame(height: 30.0)
            .contentShape(Rectangle())
            .onTapGesture {
                showDetails.toggle()
            }
            
            HStack(alignment: .top) {
                Text(description)
                    .foregroundColor(Color("AccentColor"))
                Spacer()
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(30)
            }
            .frame(height: 150)
            .opacity(showDetails ? 1 : 0)
            .animation(.easeInOut)
        }
        .padding()
        .padding(.bottom, showDetails ? 0 : -180.0)
        .animation(.easeInOut)
    }
}

struct DrinkView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            DrinkView(name: "Name", description: "Description", image: "TestImage")
            DrinkView(name: "Even longer name", description: "Description", image: "TestImage")
        }
    }
}
