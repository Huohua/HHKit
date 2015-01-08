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

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
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

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    if ([self respondsToSelector:@selector(hooksAfterViewWillAppear)]) {
        for (NSString *selString in [self hooksAfterViewWillAppear]) {
            [self performSelector:NSSelectorFromString(selString)];
        }
    }
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

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    if ([self respondsToSelector:@selector(hooksAfterViewWillDisappear)]) {
        for (NSString *selString in [self hooksAfterViewWillDisappear]) {
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
#pragma clang diagnostic pop

@end


@implementation UIViewController (ModallyPresent)
- (void)presentModalViewControllerWithBlock:(HHViewControllerBlock)viewController animated:(BOOL)animated
{
    UIViewController *vc = viewController();
    [self presentViewController:vc animated:animated completion:nil];
}

@end
