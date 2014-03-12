// light@huohua.tv

#define HHLog(format, ...)  do {                                              \
fprintf(stderr, "<%s : %d> %s\n",                                           \
[[[NSString stringWithUTF8String:__FILE__] lastPathComponent] UTF8String],  \
__LINE__, __func__);                                                        \
DDLogVerbose((format), ##__VA_ARGS__);                                           \
fprintf(stderr, "-------\n");                                               \
} while (0)

#define HHLogRect(rect) DDLogVerbose(@"%s x:%.4f, y:%.4f, w:%.4f, h:%.4f", #rect, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height)
#define HHLogSize(size) DDLogVerbose(@"%s w:%.4f, h:%.4f", #size, size.width, size.height)
#define HHLogPoint(point) DDLogVerbose(@"%s x:%.4f, y:%.4f", #point, point.x, point.y)