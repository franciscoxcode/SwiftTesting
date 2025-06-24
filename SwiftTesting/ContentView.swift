import SwiftUI

struct ContentView: View {
    @State private var quantity: Int = 0
    
    var body: some View {
        Form{
            Stepper("Quantity: \(quantity)", value: $quantity)
        }
    }    
}
    

#Preview {
    ContentView()
}
