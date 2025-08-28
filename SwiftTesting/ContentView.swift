import SwiftUI

struct ContentView: View {
    
    @State var count = 0
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Main")){
                    HStack {
                        Text("\(count)")
                        Button("+"){
                            count += 1
                        }
                    }
                }
                Section(header: Text("Navigation")) {
                    NavigationLink("B Screen", destination: BScreen(count: $count))
                }
            }
        }
    }
}

struct BScreen: View {
    
    @Binding var count: Int
    
    var body: some View {
        VStack {
            Text("\(count)")
            Stepper("Counter", value: $count)
            Button("Reset") {
                count = 0
            }
        }
    }
}


#Preview {
    ContentView()
}
