import SwiftUI

struct KeyboardToolbarView: View {
    @State private var text = ""

    var body: some View {
        NavigationStack {
            VStack {
                TextField("Escribe algo...", text: $text)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                Spacer()
            }
            .navigationTitle("Toolbar con Teclado")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button("Cancelar") {
                        text = ""
                    }
                    Spacer()
                    Button("Guardar") {
                        print("Texto guardado: \(text)")
                    }
                }
            }
        }
    }
}

#Preview {
    KeyboardToolbarView()
}
