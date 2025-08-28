import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    @State var isPublic: Bool = false
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Name", text: $name)
                Toggle("Public Profile", isOn: $isPublic)
            }
            NavigationLink("Submit", destination: ProfileDetailView(name: $name, isPublic: $isPublic))
        }
    }
}

struct ProfileDetailView: View {
    @Binding var name: String
    @Binding var isPublic: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 7) {
            Text(name)
            Text(isPublic == true ? "True" : "False")
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
