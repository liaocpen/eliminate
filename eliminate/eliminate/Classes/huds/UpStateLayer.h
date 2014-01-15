//
//  UpStateLayer.h
//  eliminate
//
//  Created by lanhu on 14-1-14.
//  Copyright 2014年 Liao_Cpen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#import "cocos2d-ui.h"

@interface UpStateLayer : CCNodeColor {
    CCLabelTTF *m_labelTimes;
    CCLabelTTF *m_labelScore;
    
    CCButton *m_scoreItem;
    CCButton *m_timeItem;
}


-(void) resetTimeString: (NSString *)string;
-(void) resetScoreString: (NSString *)string;

-(void) startAnimationDisplay;
@end
