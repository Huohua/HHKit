// light@huohua.in
#import <UIKit/UIKit.h>
#import <StoreKit/StoreKit.h>

@interface UIViewController (StoreKit) <SKStoreProductViewControllerDelegate>
- (void)presentModalBuyItemVC:(NSString *)itemId animated:(BOOL)animated;
@end