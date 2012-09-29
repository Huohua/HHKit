// light@huohua.tv
#import "UIViewController+HHKit.h"

@implementation UIViewController (HHKit)

- (void)presentModalViewControllerWithBlock:(HHViewControllerBlock)viewController animated:(BOOL)animated {
    UIViewController *vc = viewController();
    if ([vc isKindOfClass:[UINavigationController class]]) {
        [self presentModalViewController:vc animated:animated];
    } else {
        UINavigationController *nc = [[UINavigationController alloc] initWithRootViewController:vc];
        [self presentModalViewController:nc animated:animated];
    }
}

@end