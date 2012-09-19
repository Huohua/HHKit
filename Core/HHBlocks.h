// light@huohua.tv
#import <Foundation/Foundation.h>

#if NS_BLOCKS_AVAILABLE
    typedef void (^HHBasicBlock)(void);
    typedef void (^HHIterationBlock)(int number);
    typedef void (^HHObserverBlock)(NSDictionary * change);
    typedef void (^HHErrorBLock)(NSError * error);
#endif