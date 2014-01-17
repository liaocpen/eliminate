//
//  PauseLayer.m
//  eliminate
//
//  Created by lanhu on 14-1-17.
//  Copyright 2014年 Liao_Cpen. All rights reserved.
//

#import "PauseLayer.h"
#import "DotGameScene.h"


@implementation PauseLayer

-(id)init
{
    self = [super initWithColor:[CCColor colorWithCcColor4b:ccc4(198, 203, 206, 255)]];
    
    if (self) {
        [self setAnchorPoint:ccp(0, 0)];
        [self setPosition: ccp(0, 0)];
        
        m_resume = [CCButton buttonWithTitle:@"" spriteFrame:[CCSpriteFrame frameWithImageNamed:@"resume.png"] highlightedSpriteFrame:[CCSpriteFrame frameWithImageNamed:@"resume_unselect.png"] disabledSpriteFrame:nil];
        [m_resume setTarget:self selector:@selector(resumeDotGame)];
        [self addChild:m_resume];
        
        m_restart = [CCButton buttonWithTitle:@"" spriteFrame:[CCSpriteFrame frameWithImageNamed:@"restart.png"] highlightedSpriteFrame:[CCSpriteFrame frameWithImageNamed:@"restart_unselect.png"] disabledSpriteFrame:nil];
        [m_restart setTarget:self selector:@selector(restartDotGame)];
        [self addChild:m_restart];
        
        m_exittomain = [CCButton buttonWithTitle:@"" spriteFrame:[CCSpriteFrame frameWithImageNamed:@"exit.png"] highlightedSpriteFrame:[CCSpriteFrame frameWithImageNamed:@"exit_unselect.png"] disabledSpriteFrame:nil];
        [m_exittomain setTarget:self selector:@selector(exitToMainScene)];
        [self addChild:m_exittomain];
        
        [self setVisible:false];
    }
    return self;
}

-(void)startAnimationDiaplay
{
    [self setVisible:true];
    CGSize s = [CCDirector sharedDirector].viewSize;
    [m_resume setPosition:ccp(s.width, s.height / 2 + 50)];
    [m_restart setPosition:ccp(s.width, s.height / 2)];
    [m_exittomain setPosition:ccp(s.width, s.height / 2 - 50)];
    
    CCActionMoveTo *moveTo1 = [CCActionMoveTo actionWithDuration:0.2 position:ccp(s.width / 2 - 15, s.height / 2 + 50)];
    CCActionMoveTo *moveTo12 = [CCActionMoveTo actionWithDuration:02 position:ccp(s.width / 2, s.height / 2 + 50)];
    
    CCActionMoveTo *moveTo2 = [CCActionMoveTo actionWithDuration:0.2 position:ccp(s.width / 2 - 35, s.height / 2)];
    CCActionMoveTo *moveTo22 = [CCActionMoveTo actionWithDuration:0.2 position:ccp(s.width / 2 , s.height / 2)];
    
    CCActionMoveTo *moveTo3 = [CCActionMoveTo actionWithDuration:0.2 position:ccp(s.width / 2 - 45, s.height / 2 - 50)];
    CCActionMoveTo *moveTo32 = [CCActionMoveTo actionWithDuration:0.2 position:ccp(s.width / 2 , s.height / 2 - 50)];
    
    [m_resume runAction:[CCActionSequence actions:moveTo1, moveTo12, nil]];
    [m_restart runAction:[CCActionSequence actions:moveTo2, moveTo22,nil]];
    
    
}

#pragma mark ------
#pragma mark - Custom Method

-(void) resumeDotGame{
    
}

-(void) restartDotGame{

}

-(void) exitToMainScene {
    
}

@end
