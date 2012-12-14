// light@huohua.tv
#import "NSString+HHKit.h"
#import <CommonCrypto/CommonDigest.h>

@implementation NSString (HHKit)

- (NSString *)trim
{
    NSCharacterSet *set = [NSCharacterSet whitespaceCharacterSet];
    return [self stringByTrimmingCharactersInSet:set];
}

- (NSString *)md5
{
    const char      *concat_str = [self UTF8String];
    unsigned char   result[CC_MD5_DIGEST_LENGTH];
    
    CC_MD5(concat_str, strlen(concat_str), result);
    NSMutableString *hash = [NSMutableString string];
    
    for (int i = 0; i < 16; i++) {
        [hash appendFormat:@"%02X", result[i]];
    }
    
    return [hash lowercaseString];
}

- (NSString *)stringByUppercaseFirstLetter
{
    NSString *firstLetter = [self substringToIndex:1];
    return [self stringByReplacingCharactersInRange:NSMakeRange(0, 1) withString:[firstLetter uppercaseString]];
}

@end