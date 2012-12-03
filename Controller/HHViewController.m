// light@huohua.tv
#import "HHViewController.h"

@implementation HHViewController
- (void)loadView
{
    if ([self respondsToSelector:@selector(hooksAfterLoadView)]) {
        for (NSString *selString in [self hooksAfterLoadView]) {
            [self performSelector:NSSelectorFromString(selString)];
        }
    }
}

- (void)viewDidUnload
{
    if ([self respondsToSelector:@selector(hooksBeforeViewDidUnload)]) {
        for (NSString *selString in [self hooksBeforeViewDidUnload]) {
            [self performSelector:NSSelectorFromString(selString)];
        }
    }
    
    [super viewDidUnload];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    if ([self respondsToSelector:@selector(hooksAfterViewDidAppear)]) {
        for (NSString *selString in [self hooksAfterViewDidAppear]) {
            [self performSelector:NSSelectorFromString(selString)];
        }
    }
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    
    if ([self respondsToSelector:@selector(hooksAfterViewDidDisappear)]) {
        for (NSString *selString in [self hooksAfterViewDidDisappear]) {
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