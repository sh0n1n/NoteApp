import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        if let window = window {
            let navigationController = UINavigationController()
            let viewController = NoteListViewController()
            navigationController.viewControllers = [viewController]
            viewController.viewModel = NotesListViewModel()
            window.rootViewController = navigationController
            window.makeKeyAndVisible()
        }
                
        return true
    }
}

