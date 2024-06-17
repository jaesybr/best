#import <UIKit/UIKit.h>

%hook UIApplication

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Call the original method
    BOOL result = %orig;
    
    // Show an alert when the app launches
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Hello!" message:@"Welcome to MyTweak!" preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
    [self.keyWindow.rootViewController presentViewController:alert animated:YES completion:nil];
    
    return result;
}

%end
