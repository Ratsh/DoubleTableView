//
//  DualTableView.h
//  TableViewPain
//
//  Created by Admin on 18.06.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyTableView.h"

@interface DualTableView : UIView 

@property (nonatomic) MyTableView *rightTable;
@property (nonatomic) MyTableView *leftTable;

@end
