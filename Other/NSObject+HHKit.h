// light@huohua.tv
#import <Foundation/Foundation.h>

@interface NSObject (HHKit)
- (id)performSelectorWithoutWarning:(SEL)aSelector;
- (id)performSelectorWithoutWarning:(SEL)aSelector withObject:(id)object;
@end