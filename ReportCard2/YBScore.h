//
//  YBScore.h
//  ReportCard2
//
//  Created by Jang Young bin on 2015. 9. 8..
//  Copyright (c) 2015년 Jang Young bin. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YBScore : NSObject

@property (nonatomic, readonly) double korean;
@property (nonatomic, readonly) double english;
@property (nonatomic, readonly) double math;
@property (nonatomic, readonly) double sum;
@property (nonatomic, readonly) double avg;

+(instancetype)YBScoreWithArray:(NSArray*)array;
@end
