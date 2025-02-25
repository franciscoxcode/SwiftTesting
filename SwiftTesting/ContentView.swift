//
//  ContentView.swift
//  SwiftTesting
//
//  Created by Francisco Jean on 24/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach(1...10, id: \.self) { num in
                    Text("Item \(num)")
                        .padding()
                        .frame(width: 100, height: 100)
                        .background(Color.green.opacity(0.3))
                        .cornerRadius(10)
                }
            }
        }
    }
}



#Preview {
    ContentView()
}
