//
//  RunLoop.h
//  ReportCard2
//
//  Created by Jang Young bin on 2015. 9. 10..
//  Copyright (c) 2015년 Jang Young bin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EventQueue.h"
#import "YBApplicationDelegate.h"

@interface RunLoop : NSObject

@property (nonatomic, readonly) EventQueue *queue;
@property (nonatomic, readonly) id <YBApplicationDelegate> appDelegate;

-(instancetype)initWithDelegate:(id)applicationDelegate;

-(BOOL)isEmpty;
-(BOOL)willDelegate;
-(void)run;

@end
