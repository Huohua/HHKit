// light@huohua.tv

#ifndef __OPTIMIZE__
  #define HHLog(info, ...)  NSLog(info, ##__VA_ARGS__)
#else
  #define HHLog(...)        {}
#endif