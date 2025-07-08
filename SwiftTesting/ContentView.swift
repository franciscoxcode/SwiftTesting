import SwiftUI

struct DatePickerWheelView: View {
    @State private var colorFavorito = Color.blue
    
    var body: some View {
        ColorPicker("Elige un color", selection: $colorFavorito)
            .padding()
    }
}

#Preview {
    DatePickerWheelView()
}
