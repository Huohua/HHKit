// light@huohua.tv
#import <UIKit/UIKit.h>
#import "HHBlocks.h"

@interface UINavigationController (HHKit)
- (void)pushViewControllerWithBlock:(HHViewControllerBlock)viewController animated:(BOOL)animated;
@end
