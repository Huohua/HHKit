// light@huohua.tv
#import <UIKit/UIKit.h>
#import "HHBlocks.h"

@protocol UIViewControllerHooksDelegate <NSObject>
@optional - (NSArray *)hooksBeforeViewDidUnload;
@optional - (NSArray *)hooksAfterLoadView;
@end


@interface HHViewController : UIViewController <UIViewControllerHooksDelegate>
@end


@interface UIViewController (ModallyPresent)
- (void)presentModalViewControllerWithBlock:(HHViewControllerBlock)viewController animated:(BOOL)animated;
@end