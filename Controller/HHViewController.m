// light@huohua.tv
#import "HHViewController.h"

@implementation HHViewController
- (void)loadView
{
    if ([self respondsToSelector:@selector(hooksAfterLoadView)]) {
        for (NSString *selString in [self hooksAfterLoadView]) {
            #pragma clang diagnostic push
            #pragma clang diagnostic ignored "-Warc-performSelector-leaks"
            [self performSelector:NSSelectorFromString(selString)];
            #pragma clang diagnostic pop
        }
    }
}

- (void)viewDidUnload
{
    if ([self respondsToSelector:@selector(hooksBeforeViewDidUnload)]) {
        for (NSString *selString in [self hooksBeforeViewDidUnload]) {
            #pragma clang diagnostic push
            #pragma clang diagnostic ignored "-Warc-performSelector-leaks"
            [self performSelector:NSSelectorFromString(selString)];
            #pragma clang diagnostic pop
        }
    }
    
    [super viewDidUnload];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    if ([self respondsToSelector:@selector(hooksAfterViewDidAppear)]) {
        for (NSString *selString in [self hooksAfterViewDidAppear]) {
            #pragma clang diagnostic push
            #pragma clang diagnostic ignored "-Warc-performSelector-leaks"
            [self performSelector:NSSelectorFromString(selString)];
            #pragma clang diagnostic pop
        }
    }
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
    
    if ([self respondsToSelector:@selector(hooksAfterViewDidDisappear)]) {
        for (NSString *selString in [self hooksAfterViewDidDisappear]) {
            #pragma clang diagnostic push
            #pragma clang diagnostic ignored "-Warc-performSelector-leaks"
            [self performSelector:NSSelectorFromString(selString)];
            #pragma clang diagnostic pop
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