// light@huohua.tv
#import "UINavigationController+HHKit.h"

@interface NavigationBarButton : UIButton
@property (assign, nonatomic) BOOL isLeftButton;
- (id)initWithFrame:(CGRect)frame isLeftButton:(BOOL)isLeftButton;
@end

@implementation NavigationBarButton
- (id)initWithFrame:(CGRect)frame isLeftButton:(BOOL)isLeftButton
{
    self = [super initWithFrame:frame];
    if (self) {
        self.isLeftButton = isLeftButton;
    }
    return self;
}

- (UIEdgeInsets)alignmentRectInsets {
    UIEdgeInsets insets;
    if (self.isLeftButton) {
        insets = UIEdgeInsetsMake(0, 12.0f, 0, 0);
    } else {
        insets = UIEdgeInsetsMake(0, 0, 0, 12.0f);
    }
    return insets;
}

@end

@implementation UINavigationController (HHKit)

- (void)customBackgroundWithImage:(UIImage *)image withShadowImage:(UIImage *)shadowImage
{
    self.navigationBar.frame = CGRectMake(0, self.navigationBar.frame.origin.y, self.navigationBar.frame.size.width, 44);
    
    if ([self.navigationBar respondsToSelector:@selector(setBackgroundImage:forBarMetrics:)]) { // ios5
        [self.navigationBar setBackgroundImage:image forBarMetrics:UIBarMetricsDefault];
    }
    
    UIImageView *shadowView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 5)];
    shadowView.image = shadowImage;
    [self.visibleViewController.view addSubview:shadowView];
}

- (void)backBtnWithImage:(UIImage *)image highlightImage:(UIImage *)highlightImage
{
    [self leftBtnWithImage:image highlightImage:highlightImage target:self selector:@selector(popWithAnimated)];
}

- (void)leftBtnWithImage:(UIImage *)image highlightImage:(UIImage *)highlightImage target:(id)target selector:(SEL)selector
{
    UIButton *leftBtn;
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7) {
        leftBtn = [[NavigationBarButton alloc] initWithFrame:CGRectMake(0, 0, image.size.width, image.size.height) isLeftButton:YES];
    } else {
        leftBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, image.size.width, image.size.height)];
    }
    [leftBtn setImage:image forState:UIControlStateNormal];
    if (highlightImage) {
        [leftBtn setImage:highlightImage forState:UIControlStateHighlighted];
    }
    
    [leftBtn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    self.visibleViewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftBtn];
}

- (void)rightBtnWithImage:(UIImage *)image highlightImage:(UIImage *)highlightImage target:(id)target selector:(SEL)selector
{
    UIButton *rightBtn;
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 7) {
        rightBtn = [[NavigationBarButton alloc] initWithFrame:CGRectMake(0, 0, image.size.width, image.size.height) isLeftButton:NO];
    } else {
        rightBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, image.size.width, image.size.height)];
    }
    [rightBtn setImage:image forState:UIControlStateNormal];
    if (highlightImage) {
        [rightBtn setImage:highlightImage forState:UIControlStateHighlighted];
    }
    
    [rightBtn addTarget:target action:selector forControlEvents:UIControlEventTouchUpInside];
    self.visibleViewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightBtn];
}

- (void)pushViewControllerWithBlock:(HHViewControllerBlock)viewController animated:(BOOL)animated {
    [self pushViewController:viewController() animated:animated];
}

- (void)popWithAnimated
{
    if (![self popViewControllerAnimated:YES]) {
        [self.visibleViewController dismissModalViewControllerAnimated:YES];
    }
}

- (void)replaceVisibleViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    [self pushViewController:viewController animated:animated];
    
    NSMutableArray *VCs = [self.viewControllers mutableCopy];
    [VCs removeObjectAtIndex:VCs.count - 2];
    [self setViewControllers:VCs animated:animated];
}

- (BOOL)isRootViewController:(UIViewController *)viewController
{
    UIViewController *rootViewController = [self.viewControllers objectAtIndex:0];
    return [rootViewController isEqual:viewController];
}

@end
