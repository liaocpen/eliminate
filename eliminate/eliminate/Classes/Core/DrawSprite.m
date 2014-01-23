//
//  DrawSprite.m
//  eliminate
//
//  Created by lanhu on 14-1-21.
//  Copyright 2014年 Liao_Cpen. All rights reserved.
//

#import "DrawSprite.h"
#import "DataHandle.h"

#define caleActiontag 100

@implementation DrawSprite

@synthesize m_x, m_y, m_color, m_disappear;

-(void) calColor
{
    int type = arc4random() % TOTAL_TYPE;
    switch (type) {
        case 0:
            m_color = ccc4fBlue;
            break;
        case 1:
            m_color = ccc4fGreen;
            break;
        case 2:
            m_color = ccc4fRed;
            break;
        case 3:
            m_color = ccc4fPurple;
            break;
        case 4:
            m_color = ccc4fOrange;
            break;
            
        default:
            m_color = ccc4fPurple;
            break;
    }
}

-(void)spawnAtx:(NSInteger)x Y:(NSInteger)y Width:(CGFloat)w Height:(CGFloat)h
{
    m_hasSelected = YES;
    m_disappear = NO;
    m_x = x;
    m_y = y;

    m_w = w * 2;
    m_h = h * 2;
    
    [self calColor];
    
    CGSize size = [CCDirector sharedDirector].viewSize;
    CGFloat wd = [self anchorPoint].x * m_w + x * m_w + addWidth;
    
    

    
}

@end
