

#import <UIKit/UIKit.h>

@protocol BackButtonHandlerProtocol <NSObject>
@optional

// Override this method in UIViewController derived class to handle 'Back' button click
-(BOOL)navigationShouldPopOnBackButton;
@end

@interface UIViewController (BackButtonHandler) <BackButtonHandlerProtocol>

@end
