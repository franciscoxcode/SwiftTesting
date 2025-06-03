import SwiftUI

struct ContentView: View {
    @State var counter = 0
    @State var heartColor: Color = .black
    
    var body: some View {
        LikeButtonView(counter: $counter, heartColor: $heartColor)
    }
}

struct LikeButtonView: View {
    
    @Binding var counter: Int
    @Binding var heartColor: Color
    let colors: [Color] = [.red, .green, .pink, .yellow, .orange, .blue, .purple, .brown, .gray, .mint]
    
    var body: some View {
      
        Button (action: {
            counter += 1
            if let randomColor = colors.randomElement(){
                heartColor = randomColor 
            }
        }){
            Image(systemName: "heart.fill")
                .foregroundColor(heartColor)
        }
            .font(.custom("", size: 22))
            .padding(.bottom, 15)
        
        Text("\(counter)")
            .font(.custom("", size: 22))
    }
}


#Preview {
    ContentView()
}
