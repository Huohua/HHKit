// light@huohua.tv
#import <UIKit/UIKit.h>
#import "HHBlocks.h"

@interface UINavigationController (HHKit)
- (void)pushViewControllerWithBlock:(HHViewControllerBlock)viewController animated:(BOOL)animated;
- (void)popWithAnimated;

- (void)replaceVisibleViewController:(UIViewController *)viewController animated:(BOOL)animated;
- (BOOL)isRootViewController:(UIViewController *)viewController;
@end