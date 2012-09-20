// light@huohua.tv
#import "UIImage+HHKit.h"

@implementation UIImage (HHKit)
+ (UIImage *)imageFromMainBundleFile:(NSString *)filename {
    NSString *bundlePath = [[NSBundle mainBundle] bundlePath];
    return [UIImage imageWithContentsOfFile:[NSString stringWithFormat:@"%@/%@", bundlePath, filename]];
}

@end