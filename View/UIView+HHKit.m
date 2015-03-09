// light@huohua.tv
#import "UIView+HHKit.h"

@implementation UIView (HHKit)

- (CGPoint)offset
{
    return CGPointMake(self.offsetX, self.offsetY);
}

- (void)setOffset:(CGPoint)offset
{
    self.frame = CGRectMake(offset.x, offset.y, self.width, self.height);
}

- (CGSize)size
{
    return CGSizeMake(self.width, self.height);
}

- (void)setSize:(CGSize)size
{
    self.frame = CGRectMake(self.offsetX, self.offsetY, size.width, size.height);
}

- (CGFloat)offsetX
{
    return self.frame.origin.x;
}

- (void)setOffsetX:(CGFloat)offsetX
{
    self.frame = CGRectMake(offsetX, self.offsetY, self.width, self.height);
}

- (CGFloat)offsetY
{
    return self.frame.origin.y;
}

- (void)setOffsetY:(CGFloat)offsetY
{
    self.frame = CGRectMake(self.offsetX, offsetY, self.width, self.height);
}

- (CGFloat)width
{
    return self.frame.size.width;
}

- (void)setWidth:(CGFloat)width
{
    self.frame = CGRectMake(self.offsetX, self.offsetY, width, self.height);
}

- (CGFloat)height
{
    return self.frame.size.height;
}

- (void)setHeight:(CGFloat)height
{
    self.frame = CGRectMake(self.offsetX, self.offsetY, self.width, height);
}

- (CGFloat)right
{
    return self.offsetX + self.width;
}

- (CGFloat)bottom
{
    return self.offsetY + self.height;
}


#pragma mark - Alpha
- (void)show
{
    self.alpha = 1;
}

- (void)hide
{
    self.alpha = 0;
}

#pragma mark - Animation
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