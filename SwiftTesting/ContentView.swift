import SwiftUI

struct KeyboardToolbarView: View {
    var body: some View {
        NavigationView {
            Text("Hola, Max")
                .navigationTitle("Inicio")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            print("Botón presionado")
                        }) {
                            Image(systemName: "gear")
                        }
                    }
                }
        }
    }
}

#Preview {
    KeyboardToolbarView()
}
