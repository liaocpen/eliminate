//
//  DotGameScene.m
//  eliminate
//
//  Created by Liao_Cpen on 14-1-13.
//  Copyright 2014年 Liao_Cpen. All rights reserved.
//

#import "DotGameScene.h"

#define GameLayerTag 1001
@implementation DotGameScene


- (id)init
{
    self = [super init];
    if (self) {
        CCNodeColor *backgroundColor = [CCNodeColor nodeWithColor: [CCColor colorWithCcColor4b:ccc4(100, 100, 100, 255)]];
        [self addChild:backgroundColor];
        
        
    }
    return self;
}
@end
