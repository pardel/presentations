//
//  ContentView.swift
//  DevTalks
//
//  Created by Paul on 10/06/2020.
//  Copyright © 2020 Paul. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let messages = [
        Message(id: "1", sender: "Alice", content: "Hello Cluj", direction: .incoming, wasDelivered: true, wasRead: true),
        Message(id: "2", sender: "Bob", content: "Hello Bucharest", direction: .outgoing, wasDelivered: true, wasRead: false),
        Message(id: "3", sender: "Charlie", content: "Hello Romania", direction: .incoming, wasDelivered: true, wasRead: true)
    ]
    var body: some View {
        ScrollView {
            ForEach(messages) { message in
                if message.direction == .incoming {
                    IncomingMessageView(message: message)
                } else {
                    OutgoingMessageView(message: message)
                }
            }
        }
        .padding()
        .navigationBarTitle("DevTalks", displayMode: .inline)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            NavigationView {
                ContentView()
            }
            .previewDevice(PreviewDevice(rawValue: "iPhone Xʀ"))
            .previewDisplayName("iPhone")
            
            
            NavigationView {
                Text("Navigation")
                ContentView()
            }
            .previewDevice(PreviewDevice(rawValue: "iPad Air (3rd generation)"
            ))
            .previewDisplayName("iPad")
            
        }
    }
}

