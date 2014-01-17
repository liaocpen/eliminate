//
//  PauseLayer.h
//  eliminate
//
//  Created by lanhu on 14-1-17.
//  Copyright 2014年 Liao_Cpen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "cocos2d-ui.h"


@interface PauseLayer : CCNodeColor {
    CCButton * m_resume;
    CCButton * m_restart;
    CCButton * m_exittomain;
}

-(void) startAnimationDiaplay;
@end
