#import "LKObjcHelpers.h"

@implementation LKObjCHelpers

NS_ASSUME_NONNULL_BEGIN

+ (void)finishBroadcastWithoutError:(RPBroadcastSampleHandler *)handler API_AVAILABLE(macos(11.0)) {
    // Call finishBroadcastWithError with nil error, which ends the broadcast without an error popup
    // This is unsupported/undocumented but appears to work and is preferable to an error dialog with a cryptic default message
    // See https://stackoverflow.com/a/63402492 for more discussion
    #pragma clang diagnostic push
    #pragma clang diagnostic ignored "-Wnonnull"
    [handler finishBroadcastWithError:nil];
    #pragma clang diagnostic pop
}

NS_ASSUME_NONNULL_END

@end
