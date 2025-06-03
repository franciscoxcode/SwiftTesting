import SwiftUI

struct ContentView: View {
    var body: some View {
        LikeButtonView()
    }
}

struct LikeButtonView: View {
    @State private var isLiked = false
    
    var body: some View {
        Image(systemName: "heart.fill")
            .onTapGesture {
                isLiked.toggle()
            }
            .foregroundColor(isLiked == true ? .red : .black)
    }
}

#Preview {
    ContentView()
}
