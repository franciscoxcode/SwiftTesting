import SwiftUI

struct ContentView: View {
    @State private var userName: String = ""
    
    var body: some View {
        Form {
            Section(header: Text("User Details")){
                TextField("Enter user name", text: $userName)
                    .autocapitalization(.words)
                    .onChange(of: userName) { oldValue, newValue in
                        if newValue.count < 4 {
                            print("Name too short!")
                        }
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
