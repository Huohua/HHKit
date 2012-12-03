// light@huohua.tv
#import "HHViewController.h"

@implementation HHViewController
- (void)viewDidUnload
{
    if ([self respondsToSelector:@selector(hooksBeforeViewDidUnload)]) {
        for (NSString *selString in [self hooksBeforeViewDidUnload]) {
            [self performSelector:NSSelectorFromString(selString)];
        }
    }
    
    [super viewDidUnload];
}

- (void)loadView
{
    if ([self respondsToSelector:@selector(hooksAfterLoadView)]) {
        for (NSString *selString in [self hooksAfterLoadView]) {
            [self performSelector:NSSelectorFromString(selString)];
        }
    }
}

@end


@implementation UIViewController (ModallyPresent)
- (void)presentModalViewControllerWithBlock:(HHViewControllerBlock)viewController animated:(BOOL)animated
{
    UIViewController *vc = viewController();
    [self presentModalViewController:vc animated:animated];
}

@end