//
//  FDepClass1.h
//  FrameworkDepOnLiveroom
//
//  Created by jeffreypeng on 2020/1/22.
//

#import <Foundation/Foundation.h>
#import <ZegoLiveRoom/ZegoLiveRoom.h>

@interface FDepClass1 : NSObject

@property (nonatomic, readonly) ZegoLiveRoomApi *roomApi;

+ (instancetype)shared;

@end
