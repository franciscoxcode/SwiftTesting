import SwiftUI

struct KeyboardToolbarView: View {
    var body: some View {
        Button {
            print("Settings tapped")
        } label: {
            Label("Settings", systemImage: "gearshape.fill")
        }
        .buttonStyle(.automatic)
    }
}



#Preview {
    KeyboardToolbarView()
}
