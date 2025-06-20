import SwiftUI

struct ContentView: View {
    @State private var receiveEmails: Bool = true

    
    var body: some View {

        Form {
            Section(header: Text("Notifications")) {
                Toggle("Receive email updates", isOn: $receiveEmails)
                    .toggleStyle(SwitchToggleStyle(tint: .blue))
                    .onChange(of: receiveEmails) { oldValue, newValue in
                        print("Email notifications are now \(newValue ? "enabled" : "disabled")")
                    }
            }
        }
    }
}

#Preview {
    ContentView()
}
