//
//  BestillView.swift
//  Kaffe Diem
//
//  Created by Samuel Aasen on 23/03/2021.
//

import SwiftUI

struct BestillView: View {
    @State var navn = ""
    @State var varsling = true
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("BackgroundColor")
                    .ignoresSafeArea()
                VStack {
                    Image("Liquid")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                }
                
                VStack {
                    Spacer()
                        .frame(height: 450.0)
                    
                    ZStack(alignment: .leading) {
                        Color("UnselectedColor")
                            .frame(height: 50)
                            .cornerRadius(20.0)
                        if navn.isEmpty {
                            Text("Navn")
                                .foregroundColor(Color("AccentColor"))
                                .padding()
                        }
                        TextField("", text: $navn)
                            .padding()
                            .foregroundColor(Color("AccentColor"))
                    }
                    .frame(width: 300)
                    
                    NavigationLink(destination: MenyView()) {
                        HStack {
                            Text("Bestill")
                                .font(.title2)
                            Spacer()
                                .frame(width: 20.0)
                            Image(systemName: "chevron.right")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                        .frame(height: 20)
                    }
                    .padding()
                    .padding(.horizontal)
                    .background(Color("AccentColor"))
                    .foregroundColor(Color("BackgroundColor"))
                    .cornerRadius(40)
                    
                    Spacer()
                    
                    Toggle(isOn: $varsling) {
                        VStack(alignment: .leading) {
                            Text("Send varsling")
                            Text("Få en varsling når din bestilling er klar")
                                .font(.footnote)
                        }
                    }
                    .foregroundColor(Color("AccentColor"))
                    .frame(width: 300)
                    .toggleStyle(SwitchToggleStyle(tint: Color("AccentColor")))
                    
                    Spacer()
                        .frame(height: 100.0)
                }
            }
            .ignoresSafeArea()
        }
    }
}

struct BestillView_Previews: PreviewProvider {
    static var previews: some View {
        BestillView()
    }
}
