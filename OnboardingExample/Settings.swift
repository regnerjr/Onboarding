import Foundation

let onboardingKey = "onboardingShown"

class Settings {
    class func groupDefaults() -> NSUserDefaults {
        return NSUserDefaults(suiteName: "com.wigglingscholars.onboarding")!
    }
    class func registerDefaults() {
        let defaults = groupDefaults()
        defaults.registerDefaults([
            onboardingKey: false
            ])
    }
}