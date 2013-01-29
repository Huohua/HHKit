// light@huohua.tv
#import <UIKit/UIKit.h>
#import "HHBlocks.h"

@protocol UIViewControllerHooksDelegate <NSObject>
@optional - (NSArray *)hooksAfterLoadView;
@optional - (NSArray *)hooksBeforeViewDidUnload;
@optional - (NSArray *)hooksAfterViewWillAppear;
@optional - (NSArray *)hooksAfterViewDidAppear;
@optional - (NSArray *)hooksAfterViewWillDisappear;
@optional - (NSArray *)hooksAfterViewDidDisappear;
@end

@interface HHViewController : UIViewController <UIViewControllerHooksDelegate>
@end

@interface UIViewController (ModallyPresent)
- (void)presentModalViewControllerWithBlock:(HHViewControllerBlock)viewController animated:(BOOL)animated;
@end