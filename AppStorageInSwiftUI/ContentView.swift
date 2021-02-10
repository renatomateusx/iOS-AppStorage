//
//  ContentView.swift
//  AppStorageInSwiftUI
//
//  Created by Renato Mateus on 09/02/21.
//

import SwiftUI
import CoreData

struct Settings {
    static let firstNameKey = "firstName"
    static let lastNameKey = "lastName"
    static let isSubscribedKey = "isSubscribed"
}

struct ContentView: View {
    
    @AppStorage(Settings.firstNameKey) var firstName = ""
    @AppStorage(Settings.lastNameKey) var lastName = ""
    @AppStorage(Settings.isSubscribedKey) var isSubscribed = false

    var body: some View {
        NavigationView {
            VStack {
                Form {
                    Section(header: Text("Details")){
                        TextField("First Name", text: $firstName)
                            
                        TextField("Last Name", text: $lastName)
                    }
                    Section(header: Text("Member Status")){
                        Toggle("Is Subscribed", isOn: $isSubscribed)
                    }
                }
            }
            .navigationTitle("AppStorage Example")
        }
    }

   
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
