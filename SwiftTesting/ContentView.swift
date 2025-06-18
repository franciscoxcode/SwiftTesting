import SwiftUI

struct Ingredient: Identifiable {
    let id = UUID()
    let name: String
    let category: String
    let image: String
}

struct ContentView: View {
    
    let ingredients: [Ingredient] = [
        Ingredient(name: "carrot", category: "vegetable", image: "🥕"),
        Ingredient(name: "broccoli", category: "vegetable", image: "🥦"),
        Ingredient(name: "lettuce", category: "vegetable", image : "🥬"),
        Ingredient(name: "apple", category: "fruit", image: "🍎"),
        Ingredient(name: "banana", category: "fruit", image: "🍌"),
        Ingredient(name: "strawberry", category: "fruit", image: "🍓"),
        Ingredient(name: "cake", category: "dessert", image: "🍰"),
        Ingredient(name: "cupcake", category: "dessert", image: "🧁"),
        Ingredient(name: "flan", category: "dessert", image: "🍮")
    ]
    
var body: some View {
    List{
        Section(header: Text("Vegetables")) {
            ForEach(ingredients.filter {$0.category == "vegetable"}){ ingredient in
                HStack {
                    Text(ingredient.image) 
                    Text("\(ingredient.name)")
                }
            }
        }
        Section(header: Text("Fruits")){
            ForEach(ingredients.filter {$0.category == "fruit" }){ ingredient in
                HStack {
                    Text(ingredient.image) 
                    Text("\(ingredient.name)")
                }
            }
        }
        Section(header: Text("Desserts")){
            ForEach(ingredients.filter {$0.category == "dessert"}){ ingredient in 
                HStack {
                    Text(ingredient.image) 
                    Text("\(ingredient.name)")
                }
            }
        }
    }
    }
}

#Preview {
    ContentView()
}
