//
//  ViewController.m
//  demoProject
//
//  Created by xie on 2017/12/15.
//  Copyright © 2017年 abadou. All rights reserved.
//

#import "ViewController.h"
#import "TableViewCell.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)UITableView * tableView;
@property(nonatomic,strong)TableViewCell * tableViewCell;
@property(nonatomic,copy)NSMutableArray * selectArr;
@property(nonatomic,strong)NSMutableDictionary * selectedIndexes;

@end

@implementation ViewController

//- (void)viewDidUnload {
////    [_selectedIndexes release];
//    _selectedIndexes = nil;
//
//    [super viewDidUnload];
//}
- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"展开列表详情";
    _selectedIndexes = [[NSMutableDictionary alloc] init];
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds];
     _selectArr = [NSMutableArray arrayWithCapacity:10 ];
    [self.view addSubview:self.tableView];
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
 
    // Do any additional setup after loading the view, typically from a nib.
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    TableViewCell * cell = [[TableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    
    cell.btnBlock = ^(UIButton *sender) {
//        TableViewCell * cell = (TableViewCell* )sender.superview;
//
//        [_selectArr addObject:cell];
////         self.arr= [self cellsForTableView:tableView];
//
//        [tableView reloadData];
        [tableView deselectRowAtIndexPath:indexPath animated:TRUE];
        
        
        
        BOOL isSelected = ![self cellIsSelected:indexPath];
        
        
        NSNumber *selectedIndex = [NSNumber numberWithBool:isSelected];
        [_selectedIndexes setObject:selectedIndex forKey:indexPath];
        
        
        // This is where magic happens...
        
        //    [self.tableView beginUpdates];
        [self.tableView reloadData];
    };
    return cell;
}

//-(NSMutableArray *)selectArr{
//    if (!_selectArr) {
//        _selectArr = [NSMutableArray arrayWithCapacity:10 ];
//    }
//
//    return ;
//}
-(NSArray *)cellsForTableView:(UITableView *)tableView
{
    NSInteger sections = tableView.numberOfSections;
    NSMutableArray *cells = [[NSMutableArray alloc]  init];
    for (int section = 0; section < sections; section++) {
        NSInteger rows =  [tableView numberOfRowsInSection:section];
        for (int row = 0; row < rows; row++) {
            NSIndexPath *indexPath = [NSIndexPath indexPathForRow:row inSection:section];
            [cells addObject:[tableView cellForRowAtIndexPath:indexPath]];
        }
    }
    return cells;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    
    return 5;
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    // If our cell is selected, return double height
    if([self cellIsSelected:indexPath]) {
        return 80 * 2.0;
    }
    // Cell isn't selected so return single height
    return 80;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
//    [tableView deselectRowAtIndexPath:indexPath animated:TRUE];
//
//
//
//    BOOL isSelected = ![self cellIsSelected:indexPath];
//
//
//    NSNumber *selectedIndex = [NSNumber numberWithBool:isSelected];
//    [_selectedIndexes setObject:selectedIndex forKey:indexPath];
//
//
//    // This is where magic happens...
//
////    [self.tableView beginUpdates];
//    [self.tableView reloadData];
    
}

- (BOOL)cellIsSelected:(NSIndexPath *)indexPath {
    // Return whether the cell at the specified index path is selected or not
    NSNumber*selectedIndex = [_selectedIndexes objectForKey:indexPath];
    return selectedIndex == nil ? FALSE : [selectedIndex boolValue];
}


@end
