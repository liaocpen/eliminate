//
//  DotHudController.h
//  eliminate
//
//  Created by lanhu on 14-1-16.
//  Copyright 2014年 Liao_Cpen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"

@class UpStateLayer;
@class DownStateLayer;
@class PauseLayer;


@interface DotHudController : CCNode
{
    UpStateLayer *m_upStateLayer;
    DownStateLayer *m_downStateLayer;
    PauseLayer *m_pauseLayer;
    
    BOOL m_pause;
    
}

-(void) gamePause;
-(void) currentGameOver:(NSInteger)score;

-(void) resetTimeString:(NSString *)string;
-(void) resetScoreString:(NSString *)string;

-(void) startGame;
@end
