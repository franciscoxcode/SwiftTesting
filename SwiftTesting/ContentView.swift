//
//  ContentView.swift
//  SwiftTesting
//
//  Created by Francisco Jean on 24/02/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            ProfileCardView(name: "Max", role: "Engineer", imageName: "him")
            ProfileCardView(name: "Benja", role: "Engineer",imageName: "him")
        }
    }
}

struct ProfileCardView: View {
    var name: String
    var role: String
    var imageName: String

    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .clipShape(Circle())

            Text(name)
                .font(.headline)

            Text(role)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}


#Preview {
    ContentView()
}
