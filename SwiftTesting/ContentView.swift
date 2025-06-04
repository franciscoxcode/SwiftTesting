import SwiftUI

struct ContentView: View {
    @StateObject var taskviewmodel = TaskViewModel()
    
    var body: some View {
        HStack {
            Button(action: {
                taskviewmodel.modifyTask()
            }){
                Image(systemName: taskviewmodel.checked ? "checkmark.circle.fill" : "checkmark.circle")
            }
            Text("\(taskviewmodel.task)")
                .strikethrough(taskviewmodel.checked)
        }
    }
}

class TaskViewModel: ObservableObject {
    @Published var task: String = "finish this task"
    @Published var checked: Bool = false
    
    func modifyTask(){
        checked.toggle()
        task = checked ? "task finished" : "finish the task" 
    }
}




#Preview {
    ContentView()
}
