//
//  EventQueue.h
//  ReportCard2
//
//  Created by Jang Young bin on 2015. 9. 10..
//  Copyright (c) 2015년 Jang Young bin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EventQueue : NSObject

-(instancetype) init;
-(void)add:(NSString *)event;
-(NSString *)remove;

@end
