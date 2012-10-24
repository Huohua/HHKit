// light@huohua.tv
#import <UIKit/UIKit.h>

@interface UIView (HHKit)
@property (assign, nonatomic) CGPoint offset;
@property (assign, nonatomic) CGSize size;

@property (assign, nonatomic) CGFloat offsetX;
@property (assign, nonatomic) CGFloat offsetY;
@property (assign, nonatomic) CGFloat width;
@property (assign, nonatomic) CGFloat height;

@property (readonly) CGFloat right;
@property (readonly) CGFloat bottom;


- (void)show;
- (void)hide;
- (void)fadeInWithDuration:(NSTimeInterval)duration;
- (void)fadeOutWithDuration:(NSTimeInterval)duration;
@end