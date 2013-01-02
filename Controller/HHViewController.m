// light@huohua.tv
#import "HHViewController.h"

@implementation HHViewController
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 6.0) {
        //  We check the window property to make sure that the view is not visible
        if (self.isViewLoaded && self.view.window == nil) {
            [self.view removeFromSuperview]; //  Detach it from its parent (in cases of view controller containment)
            self.view = nil;
            [self performSelectorOnMainThread:@selector(viewDidUnload) withObject:nil waitUntilDone:YES];
        }
    }
}

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

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    if ([self respondsToSelector:@selector(hooksAfterViewWillAppear)]) {
        for (NSString *selString in [self hooksAfterViewWillAppear]) {
            #pragma clang diagnostic push
            #pragma clang diagnostic ignored "-Warc-performSelector-leaks"
            [self performSelector:NSSelectorFromString(selString)];
            #pragma clang diagnostic pop
        }
    }
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