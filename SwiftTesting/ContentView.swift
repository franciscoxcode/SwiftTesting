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
    @Published var counter = 0
    
    func increment(){
        counter += 1
    }
}

struct ContentView: View {     
    @StateObject var viewModel = CounterViewModel()
    
    var body: some View {
        VStack {
            SecondView(viewModel: viewModel)
        }
    }
}

struct SecondView: View {
    @ObservedObject var viewModel: CounterViewModel
    var body: some View {
        HStack {
            Text("\(viewModel.counter)")
            Button("+"){
                viewModel.increment()
            }
        }
    }
}




#Preview {
    ContentView()
}
