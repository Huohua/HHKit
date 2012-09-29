// light@huohua.tv
#import "UINavigationController+HHKit.h"

@implementation UINavigationController (HHKit)

- (void)pushViewControllerWithBlock:(HHViewControllerBlock)viewController animated:(BOOL)animated {
    [self pushViewController:viewController() animated:animated];
}

@end