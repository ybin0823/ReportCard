//
//  ScoreSortable.h
//  ReportCard2
//
//  Created by Jang Young bin on 2015. 9. 9..
//  Copyright (c) 2015년 Jang Young bin. All rights reserved.
//

#ifndef ReportCard2_ScoreSortable_h
#define ReportCard2_ScoreSortable_h

@protocol ScoreSortable <NSObject>


@required
- (double)scoreWithSubject:(NSString *)subject;


@end

#endif
