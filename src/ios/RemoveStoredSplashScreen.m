#import "RemoveStoredSplashScreen.h"

@implementation RemoveStoredSplashScreen

- (void) removeStoredSplashScreen
{
    NSString* homePath = NSHomeDirectory();
    NSString* launchScreenPath = [homePath stringByAppendingString:@"/Library/SplashBoard"];
    NSError* error = Nil;
    NSFileManager* manager = [NSFileManager defaultManager];
    [manager removeItemAtPath:launchScreenPath error:&error];
}

- (void)pluginInitialize
{
    [self removeStoredSplashScreen];
}


@end
