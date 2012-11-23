// light@huohua.tv

#import <Foundation/Foundation.h>
#import "HHBlocks.h"

@interface HHThreadHelper : NSObject

+ (void)performBlockInBackground:(HHBasicBlock)block completion:(HHBasicBlock)completionBlock waitUntilDone:(BOOL)waitUntilDone;
+ (void)performBlockInBackground:(HHBasicBlock)block completion:(HHBasicBlock)completionBlock;
+ (void)performBlockInBackground:(HHBasicBlock)block;

+ (void)performBlockInMainThread:(HHBasicBlock)block waitUntilDone:(BOOL)waitUntilDone;
+ (void)performBlockInMainThread:(HHBasicBlock)block afterDelay:(NSTimeInterval)delay;
+ (void)performBlockInMainThread:(HHBasicBlock)block;

@end