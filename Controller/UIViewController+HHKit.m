// light@huohua.tv
#import "UIViewController+HHKit.h"

@implementation UIViewController (HHKit)

- (void)presentModalViewControllerWithBlock:(HHViewControllerBlock)viewController animated:(BOOL)animated {
    UIViewController *vc = viewController();
    [self presentModalViewController:vc animated:animated];
}

@end