// light@huohua.tv
#import <Foundation/Foundation.h>

@interface NSString (HHKit)
@property (readonly) NSString *trim;
@property (readonly) NSString *md5;

- (NSString *)stringByUppercaseFirstLetter;

- (NSString *)stringByEncodeURIComponent;
- (NSString *)stringByDecodeURIComponent;
@end