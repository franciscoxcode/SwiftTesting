import SwiftUI

struct Actor: Hashable, Identifiable {
    let id = UUID()
    let name: String
    let role: String
    let bio: String
}

struct Movie: Hashable, Identifiable {
    let id = UUID()
    let title: String
    let year: Int
    let genre: String
    let director: String
    let description: String
    let actors: [Actor]
}

struct ContentView: View {
    
    let movies = [
        Movie(
            title: "Inception",
            year: 2010,
            genre: "Sci-Fi",
            director: "Christopher Nolan",
            description: "A skilled thief enters people's dreams to steal secrets, but faces his toughest mission: planting an idea.",
            actors: [
                Actor(name: "Leonardo DiCaprio", role: "Protagonist", bio: "Plays Dom Cobb, a thief who specializes in extracting secrets from dreams."),
                Actor(name: "Joseph Gordon-Levitt", role: "Sidekick", bio: "Plays Arthur, Cobb’s partner who manages mission details."),
                Actor(name: "Cillian Murphy", role: "Target", bio: "Plays Robert Fischer, heir to a business empire, the target of inception.")
            ]
        ),
        Movie(
            title: "The Matrix",
            year: 1999,
            genre: "Sci-Fi",
            director: "The Wachowskis",
            description: "A computer hacker discovers the truth about reality and his role in the war against its controllers.",
            actors: [
                Actor(name: "Keanu Reeves", role: "Protagonist", bio: "Plays Neo, a hacker who learns he is 'The One'."),
                Actor(name: "Laurence Fishburne", role: "Mentor", bio: "Plays Morpheus, leader of the rebels who guides Neo."),
                Actor(name: "Hugo Weaving", role: "Villain", bio: "Plays Agent Smith, an AI enforcer inside the Matrix.")
            ]
        ),
        Movie(
            title: "Interstellar",
            year: 2014,
            genre: "Sci-Fi",
            director: "Christopher Nolan",
            description: "A team of explorers travels through a wormhole in space to secure humanity's survival.",
            actors: [
                Actor(name: "Matthew McConaughey", role: "Protagonist", bio: "Plays Cooper, a former pilot who joins the mission to save humanity."),
                Actor(name: "Anne Hathaway", role: "Scientist", bio: "Plays Amelia Brand, a scientist on the expedition."),
                Actor(name: "Jessica Chastain", role: "Daughter", bio: "Plays Murphy, Cooper's daughter, who grows up to be a scientist on Earth.")
            ]
        )
    ]
    
    var body: some View {
        NavigationStack {
            List(movies) { movie in
                NavigationLink(value: movie){
                    VStack(alignment: .leading) {
                        Text(movie.title)
                        Text(String(movie.year))
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                }
            }
            .navigationTitle("Movies")
            .navigationDestination(for: Movie.self) { movie in
                MovieDetailView(movie: movie)
            }
        }
    }
}

struct MovieDetailView: View {
    let movie: Movie
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("Director:")
                    .bold()
                Text(movie.director)
            }
            HStack {
                Text("Year:")
                    .bold()
                Text(String(movie.year))
            }
            HStack {
                Text("Genre:")
                    .bold()
                Text(movie.genre)
            }
            VStack(alignment: .leading) {
                Text("Description:")
                    .bold()
                Text(movie.description)
            }
            VStack(alignment: .leading) {
                Text("Actors:")
                    .bold()
                ForEach (movie.actors) { actor in
                    NavigationLink(value: actor) {
                        Text(actor.name)
                    }
                }
            }
            Spacer()
        }
        .padding(.horizontal, 25)
        .navigationTitle(movie.title)
        .navigationDestination(for: Actor.self) { actor in
            ActorDetailView(actor: actor)
        }
    }
}

struct ActorDetailView: View {
    let actor: Actor
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("Role:")
                    .bold()
                Text(actor.role)
            }
            HStack(alignment: .top) {
                Text("Bio:")
                    .bold()
                Text(actor.bio)
            }
            Spacer()
        }
        .padding(.horizontal, 25)
        .navigationTitle(actor.name)
    }
}

#Preview {
    ContentView()
}
