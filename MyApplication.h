//
//  MyApplication.h
//  ReportCard2
//
//  Created by Jang Young bin on 2015. 9. 10..
//  Copyright (c) 2015년 Jang Young bin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RunLoop.h"

@interface MyApplication : NSObject

@property (nonatomic, readonly) RunLoop *loop;

+(instancetype) MyApplicationMain:(NSString *)delegateClassName;

-(void)start;

@end
