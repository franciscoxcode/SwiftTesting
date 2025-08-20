import SwiftUI

struct Person: Hashable {
    let name: String
    let age: Int
    let city: String
}

struct ContentView: View {
    
    let people = [
        Person(name: "Benjamin", age: 22, city: "Mexico City"),
        Person(name: "Luigi", age: 33, city: "Rome"),
        Person(name: "April", age: 45, city: "Hamburg")
    ]
    
    var body: some View {
        NavigationStack {
            List(people, id: \.self){ person in
                NavigationLink(person.name, value: person)
            }
            .navigationTitle("People")
            .navigationDestination(for: Person.self){ person in
                ContactDetailView(person: person)
                }
            }
        }
    }

struct ContactDetailView: View {
    let person: Person
    
    var body: some View {
        VStack {
            Text(person.name)
            Text("\(person.age)")
            Text(person.city)
        }
    }
}

#Preview {
    ContentView()
}
