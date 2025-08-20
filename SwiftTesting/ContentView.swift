import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Go to profile"){
                ProfileView()
            }
            .navigationTitle("Home")
        }
    }
}

struct ProfileView: View {
    var body: some View {
        Text("This is the profile screen")
            .navigationTitle("Profile")
    }
}

#Preview {
    ContentView()
}
