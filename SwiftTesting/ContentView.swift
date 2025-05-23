import SwiftUI

struct KeyboardToolbarView: View {
    var body: some View {
        VStack {
                    Image("robot")
                        .resizable()
                        .frame(width: 300, height: 300)
                        .border(Color.green, width: 3)
                        .overlay(
                            Text("I love you!")
                                .font(.title)
                                .foregroundColor(.red)
                                .padding()
                            , alignment: .topLeading
                        )
                        .overlay(
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                                .padding()
                            , alignment: .bottomTrailing
                        )

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
