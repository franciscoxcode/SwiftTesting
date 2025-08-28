import SwiftUI

struct ContentView: View {
    
    @State var color: Color = .green
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Preview")) {
                    Circle().foregroundColor(color)
                }
                Section(header: Text("Navigation")) {
                    NavigationLink("Edit") {
                        EditCircleView(color: $color)
                    }
                }
            }
        }
    }
}

struct EditCircleView: View {
    @Binding var color: Color
    
    var body: some View {
        ColorPicker("Select Color", selection: $color)
            .padding(.horizontal, 40)
    }
}


#Preview {
    ContentView()
}
