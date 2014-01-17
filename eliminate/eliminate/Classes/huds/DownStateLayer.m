//
//  DownStateLayer.m
//  eliminate
//
//  Created by lanhu on 14-1-16.
//  Copyright 2014年 Liao_Cpen. All rights reserved.
//

#import "DownStateLayer.h"
#import "DotHudController.h"

@implementation DownStateLayer

-(id)init
{
    CGSize s = [CCDirector sharedDirector].viewSize;
    self = [super initWithColor:[CCColor colorWithCcColor4b:ccc4(198, 203, 206, 255)]];
    
    CCNodeColor *upBackgroundColor = [CCNodeColor nodeWithColor:[CCColor colorWithCcColor4b:ccc4(255, 255, 255, 255)] width:s.width height:s.height - 80];
    [self addChild:upBackgroundColor];
    
    if (self) {
        [self setAnchorPoint:ccp(0, 0)];
        CCButton *skillOne = [CCButton buttonWithTitle:@"" spriteFrame:[CCSpriteFrame frameWithImageNamed:@"skillbutton.png"] highlightedSpriteFrame:[CCSpriteFrame frameWithImageNamed:@"skillButton_unselect.png"] disabledSpriteFrame:nil];
        [skillOne setTarget:self selector:@selector(skillOnePressed)];
        
        CCButton *skillTwo = [CCButton buttonWithTitle:@"12121" spriteFrame:[CCSpriteFrame frameWithImageNamed:@"skillbutton.png"] highlightedSpriteFrame:[CCSpriteFrame frameWithImageNamed:@"skillButton_unselect.png"] disabledSpriteFrame:nil];
        [skillTwo setTarget:self selector:@selector(skillTwoPressed)];
        
        CCButton *skillThree = [CCButton buttonWithTitle:@"" spriteFrame:[CCSpriteFrame frameWithImageNamed:@"skillbutton.png"] highlightedSpriteFrame:[CCSpriteFrame frameWithImageNamed:@"skillButton_unselect.png"] disabledSpriteFrame:nil];
        [skillThree setTarget:self selector:@selector(skillThreePressed)];
        
        [skillOne setAnchorPoint:ccp(0, 0)];
        [skillTwo setAnchorPoint:ccp(0.5, 0)];
        [skillThree setAnchorPoint:ccp(1, 0)];
        
        [skillOne setPosition:ccp(0, 0)];
        [skillTwo setPosition:ccp(s.width/2, 0)];
        [skillThree setPosition:ccp(s.width, 0)];
        
        [self addChild:skillOne];
        [self addChild:skillTwo];
        [self addChild:skillThree];
        
        [self setVisible:false];
    }
    return self;
}

-(void)startAnimationDisplay
{
    [self setAnchorPoint:ccp(0, 0)];
    [self setPosition:ccp(0, -60)];
    [self setVisible:true];
    
    CCActionMoveTo *moveTo1 = [CCActionMoveTo actionWithDuration:0.2 position:ccp(0, 0)];
    CCActionMoveTo *moveTo2 = [CCActionMoveTo actionWithDuration:0.2 position:ccp(0, -17)];
    [self runAction:[CCActionSequence actions:moveTo1, moveTo2,nil]];
}

#pragma mark -----
#pragma mark - Custom Method

-(void) skillOnePressed {
    
    
}

-(void) skillTwoPressed {

}

-(void) skillThreePressed {

}

@end
