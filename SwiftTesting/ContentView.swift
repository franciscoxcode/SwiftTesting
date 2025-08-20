import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Level 2"){
                Level2View()
            }
            .navigationTitle("Level 1")
        }
    }
}

struct Level2View: View {
    var body: some View {
            NavigationLink("Level 3"){
                Level3View()
            }
            .navigationTitle("Level 2")
    }
}

struct Level3View: View {
    var body: some View {
        Text("This is Level 3")
            .navigationTitle("Level 3")
    }
}

#Preview {
    ContentView()
}
