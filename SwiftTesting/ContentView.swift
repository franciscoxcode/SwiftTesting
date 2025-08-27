import SwiftUI

struct Character: Hashable {
    let name: String
    let role: String
    let bio: String
}

struct Book: Hashable {
    let name: String
    let author: String
    let genre: String
    let description: String
    let characters: [Character]
}

struct ContentView: View {

let books = [
    Book(name: "The Hobbit", author: "JRR Tokien", genre: "fantasy", description: "A classic adventure of Bilbo Baggins traveling with dwarves to reclaim their treasure guarded by a dragon.", characters: [
        Character(name: "Bilbo Baggins", role: "protagonist", bio: "A hobbit who prefers comfort but finds courage on an epic quest."),
        Character(name: "Gandalf", role: "mentor", bio: "A wise wizard guiding Bilbo and the dwarves."),
        Character(name: "Smaug", role: "villain", bio: "A mighty dragon guarding the stolen treasure.")
    ]),
    Book(name: "The Martian", author: "Andy Weir", genre: "sci-fi", description: "An astronaut stranded on Mars uses science and determination to survive while waiting for rescue.", characters: [
        Character(name: "Mark Watney", role: "protagonist", bio: "A botanist and astronaut stranded alone on Mars."),
        Character(name: "Melissa Lewis", role: "mentor", bio: "Commander of the Ares III mission, supportive and determined."),
        Character(name: "Mars Environment", role: "villain", bio: "The harsh and unforgiving Martian landscape.")
    ]),
    Book(name: "Clean Code", author: "Robert C. Martin (Uncle Bob)", genre: "programming", description: "A book about writing code that is easy to read, maintain, and extend.", characters: [
        Character(name: "Uncle Bob", role: "mentor", bio: "An experienced software engineer teaching clean practices."),
        Character(name: "The Junior Dev", role: "protagonist", bio: "A beginner learning how to improve coding habits."),
        Character(name: "Legacy Code", role: "villain", bio: "Messy, outdated code that resists refactoring.")
    ])
]
    
    var body: some View {
        NavigationStack{
            List(books, id: \.self) { book in
                NavigationLink(book.name, value: book)
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
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Text("Author:")
                    .bold()
                Text(book.author)
            }
            HStack {
                Text("Genre:")
                    .bold()
                Text(book.genre)
            }
            Text("Description")
                .bold()
            Text(book.description)
            Text("Characters")
                .font(.title2)
            ForEach(book.characters, id: \.self) { character in
                NavigationLink(character.name, value: character)
            }
            Spacer()
            }
        .navigationTitle(book.name)
        .navigationDestination(for: Character.self) { character in
            CharacterDetailView(character: character)
        }
        .padding(.horizontal, 25)
        .padding(.top, 20)
    }
}

struct CharacterDetailView: View {
    let character: Character
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Text("Role:")
                    .bold()
                Text(character.role)
            }
            HStack (alignment: .top) {
                Text("Bio:")
                    .bold()
                Text(character.bio)
            }
            Spacer()
        }
        .navigationTitle(character.name)
        .padding(.horizontal, 20)
        .padding(.top, 20)
    }
}

#Preview {
    ContentView()
}
