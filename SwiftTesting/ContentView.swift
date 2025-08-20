import SwiftUI

struct Book: Hashable {
    let name: String
    let author: String
    let genre: String
    let description: String
}

struct ContentView: View {
    
    let books = [
        Book(name: "the Hobbit", author: "JRR Tolkien", genre: "Fantasy", description: "It's super epic"),
        Book(name: "Harry Potter", author: "JK Rowling", genre: "Fantasy", description: "It's a blast!"),
        Book(name: "The Little Prince", author: "don't remember", genre: "Cute", description: "It's super cute!")
    ]
    
    var body: some View {
        NavigationStack {
            List(books, id: \.self){ book in
                NavigationLink(value: book){
                    HStack {
                        Image(systemName: book.genre == "Fantasy" ? "cloud" : "sparkles")
                        VStack {
                            Text(book.name)
                            Text(book.author)
                                .font(.caption)
                                .foregroundColor(.gray)
                        }
                    }
                }
            }
            .navigationTitle("Library")
            .navigationDestination(for: Book.self) { book in
                BookDetailView(book: book)
            }
        }
    }
}

struct BookDetailView: View {
    let book: Book
    
    var body: some View {
        VStack {
            Text("Author: \(book.author)")
            Text("Genre: \(book.genre)")
            Text("Description: \(book.description)")
        }
        .navigationTitle(book.name)
    }
}



#Preview {
    ContentView()
}
