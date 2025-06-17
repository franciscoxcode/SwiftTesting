import SwiftUI

class CounterViewModel: ObservableObject {
    @Published var counter = 0
    
    func increment(){
        counter += 1
    }
}

struct ContentView: View {
    @StateObject var viewModel = CounterViewModel()

    var body: some View {
        HStack{
            CounterIncrementView()
            CounterDisplayView()
            CounterResetView()
            
        }
            .environmentObject(viewModel)
    }
}

struct CounterDisplayView: View {
    @EnvironmentObject var viewModel: CounterViewModel
    var body: some View {
        Text("\(viewModel.counter)")
    }
}

struct CounterIncrementView: View {
    @EnvironmentObject var viewModel: CounterViewModel
    
    var body: some View {
        Button("+"){
            viewModel.counter += 1
        }
    }
}

struct CounterResetView: View {
    @EnvironmentObject var viewModel: CounterViewModel
    var body: some View {
        Button("reset"){
            viewModel.counter = 0
        }
    }
}

#Preview {
    ContentView()
}
