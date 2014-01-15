//
//  DotGameScene.m
//  eliminate
//
//  Created by Liao_Cpen on 14-1-13.
//  Copyright 2014年 Liao_Cpen. All rights reserved.
//

#import "DotGameScene.h"
#import "UpStateLayer.h"

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

- (void)onEnter
{
    [super onEnter];
    CGSize size = [[CCDirector sharedDirector] viewSize];
    
    //Menu button
    m_playnow = [CCButton buttonWithTitle:@"" spriteFrame: [CCSpriteFrame frameWithImageNamed:@"play_now.png"]];
    m_playnow.positionType = CCPositionTypeNormalized;
    m_playnow.position = ccp(0.5f, 0.5f);
    [m_playnow setTarget:self selector:@selector(playingNow:)];
    [self addChild:m_playnow];
    
    m_multiplayer = [CCButton buttonWithTitle:@"" spriteFrame: [CCSpriteFrame frameWithImageNamed:@"multiple_player.png"]];
    m_multiplayer.positionType = CCPositionTypeNormalized;
    m_multiplayer.position = ccp(0.5f, 0.4f);
    [m_multiplayer setTarget:self selector:@selector(multiplePlayer:)];
    [self addChild:m_multiplayer];
    
    m_highscore = [CCButton buttonWithTitle:@"" spriteFrame: [CCSpriteFrame frameWithImageNamed:@"high_score.png"]];
    m_highscore.positionType = CCPositionTypeNormalized;
    m_highscore.position = ccp(0.5f, 0.3f);
    [m_highscore setTarget:self selector:@selector(highScore:)];
    [self addChild:m_highscore];
    
    m_settrings = [CCButton buttonWithTitle:@"" spriteFrame: [CCSpriteFrame frameWithImageNamed:@"settings.png"]];
    m_settrings.positionType = CCPositionTypeNormalized;
    m_settrings.position = ccp(0.5f, 0.2f);
    [m_settrings setTarget:self selector:@selector(settings:)];
    [self addChild:m_settrings];
    
    m_aboutus = [CCButton buttonWithTitle:@"" spriteFrame: [CCSpriteFrame frameWithImageNamed:@"about_us.png"]];
    m_aboutus.positionType = CCPositionTypeNormalized;
    m_aboutus.position = ccp(0.5f, 0.1f);
    [m_aboutus setTarget:self selector:@selector(settings:)];
    [self addChild:m_aboutus];
}

#pragma mark -----
#pragma mark - Custom Method

-(void) playingNow:(id)sender
{
    CCScene *playingScene = [UpStateLayer node];
    [[CCDirector sharedDirector] replaceScene:playingScene];
}

-(void) multiplePlayer: (id)sender
{

}

-(void) highScore: (id)sender
{

}

-(void) settings: (id)sender
{

}

-(void)abouts: (id)sender
{
    
}

-(void)onEnterTransitionDidFinish
{
    [super onEnterTransitionDidFinish];
    NSLog(@"trans");
}

@end
