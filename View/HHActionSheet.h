// light@huohua.tv
#import <UIKit/UIKit.h>
#import "HHBlocks.h"

@interface HHActionSheet : UIActionSheet
- (id)initWithTitle:(NSString *)title;
- (void)addButtonWithTitle:(NSString *)title block:(HHBasicBlock)block;
- (void)addDestructiveButtonWithTitle:(NSString *)title block:(HHBasicBlock)block;
@end