#import <HockeySDK/HockeySDK.h>
#import "TRAppDelegate.h"
#import "TRSettingsController.h"

#ifndef DEBUG
#import "Secrets.h"
#endif

@implementation TRAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
#ifndef DEBUG
    [[BITHockeyManager sharedHockeyManager] configureWithIdentifier:TROPOS_HOCKEY_IDENTIFIER];
    [[BITHockeyManager sharedHockeyManager] startManager];
    [[BITHockeyManager sharedHockeyManager].authenticator authenticateInstallation];
#endif

    [[TRSettingsController new] registerSettings];

    return YES;
}

@end
