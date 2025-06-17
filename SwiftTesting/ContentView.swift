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
