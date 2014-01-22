//
//  DotHudController.m
//  eliminate
//
//  Created by lanhu on 14-1-16.
//  Copyright 2014年 Liao_Cpen. All rights reserved.
//

#import "DotHudController.h"

#import "DownStateLayer.h"
#import "UpStateLayer.h"
#import "PauseLayer.h"



@implementation DotHudController

-(id)init
{
    self = [super init];
    if (self) {
        m_downStateLayer = [DownStateLayer node];
        m_upStateLayer = [UpStateLayer node];
        m_pauseLayer = [PauseLayer node];
        
        [self addChild:m_downStateLayer z:2];
        [self addChild:m_upStateLayer z:2];
        [self addChild:m_pauseLayer z:1];
    }
    return self;
}

-(void)onEnter
{
    [super onEnter];
    [m_upStateLayer startAnimationDisplay];
    [m_downStateLayer startAnimationDisplay];
}

#pragma mark -----
#pragma mark -Custom Method

-(void)startGame
{
    if (self.parent) {
        
    }
}





















@end
