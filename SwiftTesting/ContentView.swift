import SwiftUI

struct ContentView: View {    
    @StateObject var counterview = CounterViewModel() 
    
    var body: some View {
        HStack {
            Button(action: {
                counterview.substractOne()
            }){
                Image(systemName: "minus")
            }
            Text("\(counterview.counter)")
                .padding()
            Button(action: {
                counterview.addOne()
            }){
                Image(systemName: "plus")
            }
        }
        .font(.custom("", size: 25))
    }
}

class CounterViewModel: ObservableObject {
    @Published var counter = 0
    
    func addOne() {
        counter += 1
    }
    
    func substractOne() {
        counter -= 1
    }
}


#Preview {
    ContentView()
}
