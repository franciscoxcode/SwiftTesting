import SwiftUI

struct ContentView: View {
    @State var counter: Double = 0.0
    
    var body: some View {
        NavigationStack() {
            HStack {
                Text("\(Int(counter))")
                Button("+") {
                    counter += 1
                }
            }
            NavigationLink("Screen B", destination: BScreen(counter: $counter))
                .foregroundColor(.white)
                .padding(.vertical, 13)
                .padding(.horizontal, 25)
                .background(.gray)
                .cornerRadius(25)
                .navigationTitle("Counter")
        }
    }
}

struct BScreen: View {
    @Binding var counter: Double
    
    var body: some View {
        VStack {
            Text("\(Int(counter))")
            Slider(value: $counter, in: 0...100, step: 1.0)
                .padding(50)
        }
        .navigationTitle("Slider")
        .navigationBarTitleDisplayMode(.inline)
    }
}


#Preview {
    ContentView()
}
