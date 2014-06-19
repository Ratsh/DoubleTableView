//
//  DualTableViewController.m
//  TableViewPain
//
//  Created by Admin on 18.06.14.
//  Copyright (c) 2014 Admin. All rights reserved.
//

#import "DualTableViewController.h"


@implementation DualTableViewController

- (void)loadView {
    _mainView = [DualTableView new];
    self.view = _mainView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _selectedIndexPath = [NSIndexPath indexPathForRow:0 inSection:0];
    _scrollValue = 0;
    
    _mainView.leftTable.delegate = self;
    _mainView.leftTable.dataSource = self;
    
    _mainView.rightTable.delegate = self;
    _mainView.rightTable.dataSource = self;
    
   
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}


/*
- (void)reloadInputViews {
    [super reloadInputViews];
    
    NSIndexPath *indexPath = [NSIndexPath indexPathForRow:3 inSection:1];
    
    NSLog(@"%ld", (long)[_mainView.leftTable indexPathForSelectedRow].row);
    
    [_mainView.leftTable reloadData];
    [_mainView.leftTable scrollToRowAtIndexPath:indexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];

}
*/

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
//    _selectedIndexPath = indexPath;
//}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //NSLog(@"%i", indexPath.row);
    if (tableView == _mainView.leftTable) {
        NSLog(@"%f", tableView.contentOffset.y);
    }
    _selectedIndexPath = indexPath;
    
    
}

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
   //NSLog(@"%@",scrollView);
    
    if (scrollView == _mainView.leftTable) {
        [_mainView.rightTable setContentOffset:CGPointMake(_mainView.leftTable.contentOffset.x, _mainView.leftTable.contentOffset.y)];
    } else if (scrollView == _mainView.rightTable) {
        [_mainView.leftTable setContentOffset:CGPointMake(_mainView.rightTable.contentOffset.x, _mainView.rightTable.contentOffset.y)];
    }
    //NSIndexPath *indexPath = [NSIndexPath indexPathForRow:3 inSection:0];
    //NSIndexPath *indexPath = [(MyTableView *)scrollView indexPathForSelectedRow];
    //NSIndexPath *indexPath = [_mainView.leftTable ;
    
    /*int percentScrolled = abs( (int)ceil((scrollView.contentOffset.y/scrollView.contentSize.height)*100) );
    UITableViewScrollPosition scrollPos = UITableViewScrollPositionNone;
    
    if(percentScrolled > _scrollValue)
        scrollPos = UITableViewScrollPositionTop;
    else
        scrollPos = UITableViewScrollPositionBottom;
    
    _scrollValue = percentScrolled;
*/
    
//    [_mainView.leftTable reloadData];
//    [_mainView.leftTable scrollToRowAtIndexPath:_selectedIndexPath atScrollPosition:UITableViewScrollPositionTop animated:YES];
  //  [_mainView.rightTable scrollToRowAtIndexPath:_selectedIndexPath atScrollPosition:scrollPos animated:YES];
//}
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"id";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault
                                      reuseIdentifier:identifier];
    }
    
    NSArray *initValues = [[NSArray alloc] initWithObjects:@"first", @"two", @"three", @"four", @"last", nil];
    
    //NSLog(@"%i",indexPath.row);
    //NSLog(@"%i",indexPath.section);
    if (tableView == _mainView.leftTable) {
        cell.textLabel.text = [initValues objectAtIndex:indexPath.row % 4];
        cell.textLabel.text = [cell.textLabel.text stringByAppendingString:@"___"];
        cell.textLabel.text = [cell.textLabel.text stringByAppendingFormat:@"%i",indexPath.row];
        //cell
        //_selectedIndexPath = indexPath;
    } else {
        cell.textLabel.text = [initValues objectAtIndex:(4 - (indexPath.row % 4))];
        cell.textLabel.text = [cell.textLabel.text stringByAppendingString:@"___"];
        cell.textLabel.text = [cell.textLabel.text stringByAppendingFormat:@"%i",indexPath.row];
        //_selectedIndexPath = indexPath;
    }
    return cell;
}


@end
