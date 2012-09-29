// light@huohua.tv
#import <UIKit/UIKit.h>
#import "HHBlocks.h"

@interface UIViewController (HHKit)
- (void)presentModalViewControllerWithBlock:(HHViewControllerBlock)viewController animated:(BOOL)animated;
@end