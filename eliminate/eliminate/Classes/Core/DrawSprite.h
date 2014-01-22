//
//  DrawSprite.h
//  eliminate
//
//  Created by lanhu on 14-1-21.
//  Copyright 2014年 Liao_Cpen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"
#include "config.h"


@interface DrawSprite : CCNode {
    int m_w;
    int m_h;
    
    BOOL m_hasSelected;//可否被选择
    
    CCDrawNode *m_drawNode;//画当前颜色的圆点
    CCDrawNode *m_selectNode;//用作被选中时播放动画
    
    int m_dropCount;
}

@property (nonatomic, readonly) NSInteger m_x;
@property (nonatomic, readonly) NSInteger m_y;
@property (nonatomic, readonly) ccColor4F m_color;
@property (nonatomic, readonly) BOOL m_disappear;//是否消失

//生成 该节点 x y 宽和高
-(void) spawnAtx:(NSInteger)x Y:(NSInteger)y Width:(CGFloat)w
          Height:(CGFloat)h;

//重新生成
-(void) respawn;

//生成后掉落下来
-(void) spawnDropdown;

//重置属性 x和y坐标值
-(void) resetPropertyA:(NSInteger)x Y:(NSInteger)y;

//重置后掉落函数
-(void) resetDropdown;

//判断是移动的点是否在 检查范围内
-(BOOL) positionInContent:(CGPoint)pos;

//被选中调用该方法
-(BOOL) selectedType;

//消失
-(void) disappear:(BOOL) callf;

//取消选中状态
-(void) unselected;

//得到当前绘制节点的位置
-(CGPoint) getDrawNodePosition;

//保持被选中状态
-(void) KeepSelected;

//取消保持被选中状态
-(void) unKeepSelected;


@end
