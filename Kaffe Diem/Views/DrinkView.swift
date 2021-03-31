//
//  DrinkView.swift
//  Kaffe Diem
//
//  Created by Samuel Aasen on 26/03/2021.
//

import SwiftUI

struct DrinkView: View {
    @State var showDetails = false
    @State var showingAlert = false
    
    var name: String
    var description: String
    var image: String
    var cost: Int
    
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
            
            HStack {
                VStack {
                    Text(description)
                        .foregroundColor(Color("AccentColor"))
                    Spacer()
                    Text(String(cost) + "kr")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.vertical, 5.0)
                        .padding(.horizontal, 20.0)
                        .foregroundColor(Color("BackgroundColor"))
                        .background(Color("AccentColor"))
                        .cornerRadius(30)
                        .onTapGesture {
                            // Show alert
                            showingAlert = true
                            
                            // Handle notification
                            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound]) {
                                granted, error in
                                if error != nil {
                                    print("[ERROR] Error occured while getting notification authorization")
                                }
                            }
                            
                            let content = UNMutableNotificationContent()
                            content.title = "Bestilling klar"
                            content.body = "Din " + name + " er nå klar for henting på Kaffe Diem."
                            
                            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
                            let uuidString = UUID().uuidString
                            let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
                            
                            UNUserNotificationCenter.current().add(request) { (error) in
                                if error != nil {
                                    print("[ERROR] Error occured while sheduling notification request")
                                }
                            }
                        }
                        .alert(isPresented: $showingAlert) {
                            Alert(title: Text("Bestilling registrert"), message: Text("Du vil motta en varsling når din bestilling er klar for henting"), dismissButton: .default(Text("OK")))
                        }
                }
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
            DrinkView(name: "Name", description: "Description", image: "TestImage", cost: 15)
        }
    }
}
