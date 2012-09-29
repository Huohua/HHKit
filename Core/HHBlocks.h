// light@huohua.tv
#import <UIKit/UIKit.h>

typedef void (^HHBasicBlock)(void);
typedef void (^HHIterationBlock)(int number);
typedef void (^HHObserverBlock)(NSDictionary * change);
typedef void (^HHErrorBLock)(NSError * error);
typedef UIViewController *(^HHViewControllerBlock)();