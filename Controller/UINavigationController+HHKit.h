// light@huohua.tv
#import <UIKit/UIKit.h>
#import "HHBlocks.h"

@interface UINavigationController (HHKit)
- (void)customBackgroundWithImage:(UIImage *)image;

- (void)backBtnWithImage:(UIImage *)image highlightImage:(UIImage *)highlightImage;
- (void)leftBtnWithImage:(UIImage *)image highlightImage:(UIImage *)highlightImage target:(id)target selector:(SEL)selector;
- (void)rightBtnWithImage:(UIImage *)image highlightImage:(UIImage *)highlightImage target:(id)target selector:(SEL)selector;

- (void)replaceVisibleViewController:(UIViewController *)viewController animated:(BOOL)animated;
@end