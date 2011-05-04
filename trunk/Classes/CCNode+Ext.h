//
//  CCNode+Ext.h
//  ___PROJECTNAME___
//
//  Created by Ngo Duc Hiep on 3/9/11.
//  Copyright 2011 PTT Solution., JSC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "cocos2d.h"


@interface CCNode(Ext) 
- (BOOL) containsPoint:(CGPoint) loc includeChilds:(BOOL) no;
- (BOOL) containsPoint:(CGPoint) loc;
- (BOOL) containsTouch:(UITouch *) touch;
@end