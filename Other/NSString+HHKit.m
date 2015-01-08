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
    
    CC_MD5(concat_str, (unsigned int)strlen(concat_str), result);
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

- (NSString *)stringByEncodeURIComponent
{
    NSString *s = [self copy];
    s = [s stringByReplacingOccurrencesOfString:@"?" withString:@"%3F" options:NSCaseInsensitiveSearch range:NSMakeRange(0, s.length)];
    s = [s stringByReplacingOccurrencesOfString:@"=" withString:@"%3D" options:NSCaseInsensitiveSearch range:NSMakeRange(0, s.length)];
    s = [s stringByReplacingOccurrencesOfString:@":" withString:@"%3A" options:NSCaseInsensitiveSearch range:NSMakeRange(0, s.length)];
    s = [s stringByReplacingOccurrencesOfString:@"/" withString:@"%2F" options:NSCaseInsensitiveSearch range:NSMakeRange(0, s.length)];
    s = [s stringByReplacingOccurrencesOfString:@"&" withString:@"%26" options:NSCaseInsensitiveSearch range:NSMakeRange(0, s.length)];
    s = [s stringByReplacingOccurrencesOfString:@"$" withString:@"%24" options:NSCaseInsensitiveSearch range:NSMakeRange(0, s.length)];
    s = [s stringByReplacingOccurrencesOfString:@";" withString:@"%3B" options:NSCaseInsensitiveSearch range:NSMakeRange(0, s.length)];
    s = [s stringByReplacingOccurrencesOfString:@"," withString:@"%2C" options:NSCaseInsensitiveSearch range:NSMakeRange(0, s.length)];
    s = [s stringByReplacingOccurrencesOfString:@"@" withString:@"%40" options:NSCaseInsensitiveSearch range:NSMakeRange(0, s.length)];
    s = [s stringByReplacingOccurrencesOfString:@"+" withString:@"%2B" options:NSCaseInsensitiveSearch range:NSMakeRange(0, s.length)];
    return s;
}

- (NSString *)stringByDecodeURIComponent
{
    NSString *s = [self copy];
    s = [s stringByReplacingOccurrencesOfString:@"%3F" withString:@"?" options:NSCaseInsensitiveSearch range:NSMakeRange(0, s.length)];
    s = [s stringByReplacingOccurrencesOfString:@"%3D" withString:@"=" options:NSCaseInsensitiveSearch range:NSMakeRange(0, s.length)];
    s = [s stringByReplacingOccurrencesOfString:@"%3A" withString:@":" options:NSCaseInsensitiveSearch range:NSMakeRange(0, s.length)];
    s = [s stringByReplacingOccurrencesOfString:@"%2F" withString:@"/" options:NSCaseInsensitiveSearch range:NSMakeRange(0, s.length)];
    s = [s stringByReplacingOccurrencesOfString:@"%26" withString:@"&" options:NSCaseInsensitiveSearch range:NSMakeRange(0, s.length)];
    s = [s stringByReplacingOccurrencesOfString:@"%24" withString:@"$" options:NSCaseInsensitiveSearch range:NSMakeRange(0, s.length)];
    s = [s stringByReplacingOccurrencesOfString:@"%3B" withString:@";" options:NSCaseInsensitiveSearch range:NSMakeRange(0, s.length)];
    s = [s stringByReplacingOccurrencesOfString:@"%2C" withString:@"," options:NSCaseInsensitiveSearch range:NSMakeRange(0, s.length)];
    s = [s stringByReplacingOccurrencesOfString:@"%40" withString:@"@" options:NSCaseInsensitiveSearch range:NSMakeRange(0, s.length)];
    s = [s stringByReplacingOccurrencesOfString:@"%2B" withString:@"+" options:NSCaseInsensitiveSearch range:NSMakeRange(0, s.length)];
    return s;
}

@end
