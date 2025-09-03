import SwiftUI

struct ContentView: View {
    @State private var color: Color = .gray
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 30) {
                Spacer()
                Circle().fill(color)
                    .padding(.horizontal, 50)
                NavigationLink("Color Picker", destination: DetailView(color: $color))
                Spacer()
                Spacer()
            }
            .navigationTitle("Circle")
        }
    }
}

struct DetailView: View {
    @Binding var color: Color
    
    var body: some View {
        VStack {
            Circle().fill(color)
                .padding(.horizontal, 50)
                .padding(.vertical, 20)
            Form {
                ColorPicker("Choose Color", selection: $color, supportsOpacity: true)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle("Color Picker")
    }
}


#Preview {
    ContentView()
}
