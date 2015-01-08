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

- (NSInteger)addButtonWithTitle:(NSString *)title
{
    return [self addButtonWithTitle:title block:^{}];
}

- (NSInteger)addButtonWithTitle:(NSString *)title block:(HHBasicBlock)block
{
    if (!block) {
        block = ^{};
    }
    
    [self.blocks addObject:[block copy]];
    return [super addButtonWithTitle:title];
}

- (NSInteger)addDestructiveButtonWithTitle:(NSString *)title block:(HHBasicBlock)block
{
    NSInteger index = [self addButtonWithTitle:title block:block];
    self.destructiveButtonIndex = self.numberOfButtons - 1;
    
    return index;
}

- (void)addCancelButtonWithTitle:(NSString *)title
{
    [self addCancelButtonWithTitle:title block:^{}];
}

- (void)addCancelButtonWithTitle:(NSString *)title block:(HHBasicBlock)block
{
    [self addButtonWithTitle:title block:block];
    self.cancelButtonIndex = self.numberOfButtons - 1;
}

- (void)actionSheet:(HHActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    HHBasicBlock block = self.blocks[buttonIndex];

    block();
}

@end