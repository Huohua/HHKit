// light@huohua.tv
#import "NSObject+HHKit.h"

@implementation NSObject (HHKit)

- (id)performSelectorWithoutWarning:(SEL)aSelector
{
    #pragma clang diagnostic push
    #pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    return [self performSelector:aSelector];
    #pragma clang diagnostic pop
}

- (id)performSelectorWithoutWarning:(SEL)aSelector withObject:(id)object
{
    #pragma clang diagnostic push
    #pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    return [self performSelector:aSelector withObject:object];
    #pragma clang diagnostic pop
}

@end