// light@huohua.tv
#import "HHActionSheet.h"
@interface HHActionSheet () <UIActionSheetDelegate>
@property (strong, nonatomic) NSMutableArray *blocks;
@end

@implementation HHActionSheet
- (NSMutableArray *)blocks
{
    if (!_blocks) {
        _blocks = [[NSMutableArray alloc] init];
    }

    return _blocks;
}

- (id)initWithTitle:(NSString *)title cancelButtonTitle:(NSString *)cancelButtonTitle destructiveButtonTitle:(NSString *)destructiveButtonTitle
{
    self = [self initWithTitle:title];
    return self;
}

- (id)initWithTitle:(NSString *)title
{
    self = [self initWithTitle:title delegate:self cancelButtonTitle:nil destructiveButtonTitle:nil otherButtonTitles:nil];
    return self;
}

- (void)addButtonWithTitle:(NSString *)title block:(HHBasicBlock)block
{
    [self addButtonWithTitle:title];
    [self.blocks addObject:[block copy]];
}

- (void)addDestructiveButtonWithTitle:(NSString *)title block:(HHBasicBlock)block
{
    [self addButtonWithTitle:title block:block];
    self.destructiveButtonIndex = self.numberOfButtons - 1;
}

- (void)actionSheet:(HHActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    HHBasicBlock block = [self.blocks objectAtIndex:buttonIndex];

    block();
}

- (void)showInView:(UIView *)view
{
    [super showInView:view];
}

@end