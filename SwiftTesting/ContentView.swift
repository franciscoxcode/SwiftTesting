//
//  ContentView.swift
//  SwiftTesting
//
//  Created by Francisco Jean on 24/02/25.
//

import SwiftUI

struct ContentView: View {
    let developers = ["Max", "Sofía", "Carlos"]
    let designers = ["Andrea", "Luis", "Valeria"]

    var body: some View {
        List {
            Section(header: Text("Developers")) {
                ForEach(developers, id: \.self) { name in
                    Text(name)
                }
            }

            Section(header: Text("Designers")) {
                ForEach(designers, id: \.self) { name in
                    Text(name)
                }
            }
        }
    }
}



#Preview {
    ContentView()
}
