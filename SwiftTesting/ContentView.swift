import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    @State var isPublic: Bool = true
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Options")) {
                    VStack {
                        TextField("Name", text: $name)
                        Toggle("Public Profile", isOn: $isPublic)
                        }
                    }
                Section {
                    NavigationLink("View Details", destination: DetailsView(name: $name, isPublic: $isPublic))
                }
            }
            .navigationTitle("Profile")
        }
    }
}

struct DetailsView: View {
    @Binding var name: String
    @Binding var isPublic: Bool
    
    var body: some View {
        Form {
            VStack() {
                LabeledContent("Name", value: name.isEmpty ? "Unknown" : name)
                LabeledContent("Public Profile", value: isPublic ? "yes" : "no")
            }
        }
    }
}

#Preview {
    ContentView()
}
