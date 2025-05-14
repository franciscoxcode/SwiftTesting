import SwiftUI

struct KeyboardToolbarView: View {
    var body: some View {
        VStack {
                    Image("robot")
                        .resizable()
                        .scaleEffect(x: 0.5, y: 0.3)
                        .frame(width: 300, height: 500)
                        .border(Color.green, width: 3)

                    Text("")
                        .padding()
                        .font(.headline)
                }
                .padding()
    }
}


#Preview {
    KeyboardToolbarView()
}
