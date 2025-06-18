import SwiftUI

struct ContentView: View {
    @State private var text1: String = ""
    @State private var text2: String = ""

    var body: some View {
        Form {
            VStack {
                TextField("Default", text: $text1)
                    .textFieldStyle(DefaultTextFieldStyle())

                TextField("Plain", text: $text2)
                    .textFieldStyle(PlainTextFieldStyle())
            }
            .padding()
        }
    }
}
#Preview {
    ContentView()
}
