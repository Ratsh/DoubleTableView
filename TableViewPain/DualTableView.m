//
//  DualTableView.m
//  TableViewPain
//
//  Created by Admin on 18.06.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "DualTableView.h"

@implementation DualTableView

- (id)init {
    self = [super init];
    if (self) {
        self.backgroundColor = [UIColor greenColor];
        
        _leftTable = [MyTableView new];
        _leftTable.transform = CGAffineTransformMakeRotation(M_PI_2);
        _leftTable.showsVerticalScrollIndicator = NO;
        _leftTable.showsHorizontalScrollIndicator = NO;
        [self addSubview:_leftTable];
        
        _rightTable = [MyTableView new];
        _rightTable.transform = CGAffineTransformMakeRotation(-M_PI_2);
        _leftTable.showsVerticalScrollIndicator = NO;
        _rightTable.showsHorizontalScrollIndicator = NO;
        [self addSubview:_rightTable];
    }
    
    return self;
}



- (void)layoutSubviews {
    [super layoutSubviews];
    
    _leftTable.frame = CGRectMake(10, 20, 150, 400);
    _rightTable.frame = CGRectMake(150, 20, 150, 400);
    
}

@end
