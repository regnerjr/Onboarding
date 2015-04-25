import UIKit

enum Storyboard: String {
    case Main = "Main"
    case Onboarding = "Onboarding"
}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {

        Settings.registerDefaults()

        if( !Settings.groupDefaults().boolForKey(onboardingKey)) {
            launchStoryboard(Storyboard.Onboarding)
        } else {
            launchStoryboard(Storyboard.Main)
        }
        return true
    }

    func launchStoryboard(storyboard: Storyboard) {
        UIApplication.sharedApplication().setStatusBarHidden(true, withAnimation: .Slide)
        let storyboard = UIStoryboard(name: storyboard.rawValue, bundle: nil)
        let controller = storyboard.instantiateInitialViewController() as! UIViewController
        self.window?.rootViewController = controller
    }
}

