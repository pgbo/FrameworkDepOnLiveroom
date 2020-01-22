//
//  FDepClass1.m
//  FrameworkDepOnLiveroom
//
//  Created by jeffreypeng on 2020/1/22.
//

#import "FDepClass1.h"

@interface FDepClass1 ()

@property (nonatomic) ZegoLiveRoomApi *roomApi;

@end

@implementation FDepClass1

static FDepClass1 *instance;

+ (instancetype)shared {
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[super allocWithZone:NULL] init];
    });
    return instance;
}

+ (instancetype)allocWithZone:(struct _NSZone *)zone {
    return [FDepClass1 shared];
}

- (instancetype)init {
    if (self = [super init]) {
        // Just for test.
        _roomApi = [[ZegoLiveRoomApi alloc] initWithAppID:123456 appSignature:nil];
    }
    return self;
}

@end
