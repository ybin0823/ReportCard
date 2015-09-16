//
//  YBApplicationDelegate.h
//  ReportCard2
//
//  Created by Jang Young bin on 2015. 9. 10..
//  Copyright (c) 2015년 Jang Young bin. All rights reserved.
//

#ifndef ReportCard2_YBApplicationDelegate_h
#define ReportCard2_YBApplicationDelegate_h

@protocol YBApplicationDelegate <NSObject>


@required
- (void)started;
- (void)willExit;
- (void)runCommand:(NSString *)event;

@end

#endif
