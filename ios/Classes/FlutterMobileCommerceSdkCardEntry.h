#import <Flutter/Flutter.h>
@import SquareInAppPaymentsSDK;

@interface FlutterMobileCommerceSdkCardEntry : NSObject<SQIPCardEntryViewControllerDelegate>

- (void)initWithMethodChannel:(FlutterMethodChannel *)channel;
- (void)startCardEntryFlow:(FlutterResult)result;
- (void)completeCardEntry:(FlutterResult)result;
- (void)showCardProcessingError:(FlutterResult)result errorMessage:(NSString *)errorMessage;

@end
