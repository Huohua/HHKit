// light@huohua.tv
#import "UIView+HHKit.h"

@implementation UIView (HHKit)

- (CGFloat)offsetX
{
    return self.frame.origin.x;
}

- (void)setOffsetX:(CGFloat)offsetX
{
    self.frame = CGRectMake(offsetX, self.frame.origin.y, self.frame.size.width, self.frame.size.height);
}

- (CGFloat)offsetY
{
    return self.frame.origin.y;
}

- (void)setOffsetY:(CGFloat)offsetY
{
    self.frame = CGRectMake(self.frame.origin.x, offsetY, self.frame.size.width, self.frame.size.height);
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width
{
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, width, self.frame.size.height);
}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height
{
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, self.frame.size.width, height);
}

- (CGFloat)right
{
    return self.offsetX + self.width;
}

- (CGFloat)bottom
{
    return self.offsetY + self.height;
}

- (void)show
{
    self.alpha = 1;
}

- (void)hide
{
    self.alpha = 0;
}

- (void)fadeInWithDuration:(NSTimeInterval)duration
{
    [UIView animateWithDuration:duration animations:^{
        self.alpha = 1;
    }];
}

- (void)fadeOutWithDuration:(NSTimeInterval)duration
{
    [UIView animateWithDuration:duration animations:^{
        self.alpha = 0;
    }];
}

@end