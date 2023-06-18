import SwiftUI

@main
struct Lesson13_SwiftUI_PracticeApp: App {
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            FormView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
