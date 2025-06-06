import SwiftUI

// ContentView displays a simple counter with plus and minus buttons.
// The counter's value is stored in a StateObject of CounterViewModel.

struct ContentView: View {
    @StateObject var counterview = CounterViewModel()

    var body: some View {
        HStack {
            // Tapping this button decreases the counter.
            Button(action: {
                counterview.subtractOne()
            }){
                Image(systemName: "minus")
            }
            Text("\(counterview.counter)")
                .padding()
            // Tapping this button increases the counter.
            Button(action: {
                counterview.addOne()
            }){
                Image(systemName: "plus")
            }
        }
        .font(.system(size: 25))
    }
}

class CounterViewModel: ObservableObject {
    @Published var counter = 0  // Current counter value shown in the view

    // Increment the counter by one.
    func addOne() {
        counter += 1
    }

    // Decrement the counter but keep it at or above zero.
    func subtractOne() {
        counter = max(0, counter - 1)
    }
}


#Preview {
    ContentView()
}
