//
//  MyTableView.m
//  TableViewPain
//
//  Created by Admin on 19.06.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "MyTableView.h"

@implementation MyTableView

- (void)reloadData {
    [super reloadData];
    NSLog(@"%@", [self indexPathForSelectedRow]);
}

@end
