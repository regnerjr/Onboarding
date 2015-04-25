import UIKit

class OnboardingViewController : UIViewController {

    @IBAction func doneOnboarding(sender: UIButton) {
        Settings.groupDefaults().setBool(true, forKey: onboardingKey)
        let ad = UIApplication.sharedApplication().delegate as! AppDelegate
        ad.launchStoryboard(Storyboard.Main)
        
    }
}