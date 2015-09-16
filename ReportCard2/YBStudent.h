//
//  Student.h
//  ReportCard2
//
//  Created by Jang Young bin on 2015. 9. 8..
//  Copyright (c) 2015년 Jang Young bin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "YBScore.h"


@interface YBStudent : NSObject

@property (nonatomic, readonly) NSString *name;
@property (nonatomic, readonly) YBScore *score;

+(instancetype)YBStudentWithString:(NSString*)str;

@end
