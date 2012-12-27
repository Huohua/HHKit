// light@huohua.tv
#import <UIKit/UIKit.h>
#import "HHBlocks.h"

@interface HHActionSheet : UIActionSheet
- (id)initWithTitle:(NSString *)title;
- (NSInteger)addButtonWithTitle:(NSString *)title block:(HHBasicBlock)block;
- (NSInteger)addDestructiveButtonWithTitle:(NSString *)title block:(HHBasicBlock)block;
- (void)addCancelButtonWithTitle:(NSString *)title;
- (void)addCancelButtonWithTitle:(NSString *)title block:(HHBasicBlock)block;
@end