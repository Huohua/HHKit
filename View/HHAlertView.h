// light@huohua.tv
#import <UIKit/UIKit.h>
#import "HHBlocks.h"

@interface HHAlertView : UIAlertView
- (id)initWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle;
- (id)initWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle cancelBlock:(HHBasicBlock)cancelBlock;
- (void)addButtonWithTitle:(NSString *)title block:(HHBasicBlock)block;
@end