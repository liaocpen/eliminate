//
//  UpStateLayer.m
//  eliminate
//
//  Created by lanhu on 14-1-14.
//  Copyright 2014年 Liao_Cpen. All rights reserved.
//

#import "UpStateLayer.h"


@implementation UpStateLayer

-(id)init
{
    CGSize s = [CCDirector sharedDirector].viewSize;
    self = [super initWithColor:[CCColor colorWithCcColor4b:ccc4(198, 203, 206, 255)]];

    CCNodeColor *upBackgroundColor = [CCNodeColor nodeWithColor:[CCColor colorWithCcColor4b:ccc4(255, 255, 255, 255)] width:s.width height:s.height - 80];
    [self addChild:upBackgroundColor];
    
    if (self) {
        m_scoreItem = [CCButton buttonWithTitle:@"" spriteFrame:[CCSpriteFrame frameWithImageNamed:@"scorebutton.png"] highlightedSpriteFrame:[CCSpriteFrame frameWithImageNamed:@"score_unselect.png"] disabledSpriteFrame:nil];
        [m_scoreItem setAnchorPoint:ccp(0, 0)];
        [m_scoreItem setPosition:ccp(0, s.height - 80)];
        [m_scoreItem setTarget:self selector:@selector(menuBePressed:)];
        [self addChild:m_scoreItem];
        
        m_timeItem = [CCButton buttonWithTitle:@"" spriteFrame:[CCSpriteFrame frameWithImageNamed:@"timebutton.png"] highlightedSpriteFrame:[CCSpriteFrame frameWithImageNamed:@"time_unselect.png"] disabledSpriteFrame:nil];
        [m_timeItem setAnchorPoint:ccp(0, 0)];
        [m_timeItem setPosition:ccp(s.width - 310  , s.height - 80)];
        [m_timeItem setTarget:self selector:@selector(menuBePressed:)];
        [self addChild: m_timeItem];
        
        
        
        m_labelScore = [CCLabelTTF labelWithString:@"0" fontName:@"Arial" fontSize:20];
        m_labelTimes = [CCLabelTTF labelWithString:@"60" fontName:@"Arial" fontSize:20];
        
        [m_labelScore setAnchorPoint:ccp(0, 0.5)];
        [m_labelScore setColor: [CCColor colorWithCcColor3b:ccc3(0, 0, 0)]];
        [m_labelScore setPosition:ccp(m_scoreItem.contentSize.width / 2 + 10, m_scoreItem.contentSize.height / 2)];
        
        [m_labelTimes setAnchorPoint:ccp(0, 0.5)];
        [m_labelTimes setColor:[CCColor colorWithCcColor3b:ccc3(0, 0, 0)]];
        [m_labelTimes setPosition:ccp(m_timeItem.contentSize.width / 2 + 10, m_timeItem.contentSize.height / 2)];
        [m_scoreItem addChild:m_labelScore z:11];
        [m_timeItem addChild:m_labelTimes z:11];
        [self setVisible:false];
        
        
        
    }
    return self;
}

#pragma mark -------
#pragma mark - Custom Method 

-(void)resetScoreString:(NSString *)string
{

}

-(void)resetTimeString:(NSString *)string
{

}

-(void)startAnimationDisplay
{
    [self setVisible:true];
    
}

-(void)menuBePressed:(id)sender
{
    if (self.parent) {
        
    }
}
@end
