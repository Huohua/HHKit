// light@huohua.tv
#import "HHLabel.h"
#import "UIView+HHKit.h"

@implementation UILabel (HHKit)

- (void)autoResize:(CGSize)maxSize
{
    CGSize size = [self.text sizeWithFont:self.font constrainedToSize:maxSize lineBreakMode:self.lineBreakMode];
    self.frame = CGRectMake(self.offsetX, self.offsetY, size.width, size.height);
}

@end


@implementation HHLabel

@end