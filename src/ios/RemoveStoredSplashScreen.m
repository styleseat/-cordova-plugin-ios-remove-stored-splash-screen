#import "RemoveStoredSplashScreen.h"

@implementation RemoveStoredSplashScreen

- (void) removeStoredSplashScreen
{
    NSString* homePath = NSHomeDirectory();
    NSString* launchScreenPath = [homePath stringByAppendingString:@"/Library/SplashBoard"];
    NSError* error = Nil;
    NSFileManager* manager = [NSFileManager defaultManager];
    if ([manager removeItemAtPath:launchScreenPath error:&error])
    {
        NSLog(@"Successfully removed stored splash screen");
    } else {
        NSLog(@"Failed to remove stored splash screen, %@", error);
    }
}

- (void)pluginInitialize
{
    [self removeStoredSplashScreen];
}


@end
