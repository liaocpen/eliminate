//
//  IntroScene.m
//  eliminate
//
//  Created by Liao_Cpen on 14-1-12.
//  Copyright Liao_Cpen 2014年. All rights reserved.
//
// -----------------------------------------------------------------------

// Import the interfaces
#import "IntroScene.h"
#import "DotGameScene.h"


// -----------------------------------------------------------------------
#pragma mark - IntroScene
// -----------------------------------------------------------------------

@implementation IntroScene

// -----------------------------------------------------------------------
#pragma mark - Create & Destroy
// -----------------------------------------------------------------------

+ (IntroScene *)scene
{
	return [[self alloc] init];
}

// -----------------------------------------------------------------------

- (id)init
{
    // Apple recommend assigning self with supers return value
    self = [super init];
    if (!self) return(nil);
    
//    // Create a colored background (Dark Grey)
//    CCNodeColor *background = [CCNodeColor nodeWithColor:[CCColor colorWithRed:0.2f green:0.2f blue:0.2f alpha:1.0f]];
//    [self addChild:background];
//    
//    // Hello world
//    CCLabelTTF *label = [CCLabelTTF labelWithString:@"Hello World" fontName:@"Chalkduster" fontSize:36.0f];
//    label.positionType = CCPositionTypeNormalized;
//    label.color = [CCColor redColor];
//    label.position = ccp(0.5f, 0.5f); // Middle of screen
//    [self addChild:label];
//    
//    // Spinning scene button
//    CCButton *spinningButton = [CCButton buttonWithTitle:@"[ Spinning ]" fontName:@"Verdana-Bold" fontSize:18.0f];
//    spinningButton.positionType = CCPositionTypeNormalized;
//    spinningButton.position = ccp(0.5f, 0.35f);
//    [spinningButton setTarget:self selector:@selector(onSpinningClicked:)];
//    [self addChild:spinningButton];
//
//    // Next scene button
//    CCButton *newtonButton = [CCButton buttonWithTitle:@"[ Newton ]" fontName:@"Verdana-Bold" fontSize:18.0f];
//    newtonButton.positionType = CCPositionTypeNormalized;
//    newtonButton.position = ccp(0.5f, 0.20f);
//    [newtonButton setTarget:self selector:@selector(onNewtonClicked:)];
//    [self addChild:newtonButton];
//	
    // done
	return self;
}

- (void)onEnter
{
    [super onEnter];
//    [self addChild:[HelloWorldScene scene]];
    [[CCDirector sharedDirector] replaceScene:[DotGameScene node]];
    
    
}

@end
