//
//  DualTableViewController.h
//  TableViewPain
//
//  Created by Admin on 18.06.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DualTableView.h"

@interface DualTableViewController : UIViewController <UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate>

@property (nonatomic) DualTableView *mainView;
@property (nonatomic) NSIndexPath *selectedIndexPath;
@property (nonatomic) int scrollValue;

@end
