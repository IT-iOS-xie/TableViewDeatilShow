//
//  TableViewCell.h
//  demoProject
//
//  Created by xie on 2017/12/15.
//  Copyright © 2017年 abadou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
@property(nonatomic,strong)UIView * view1;

@property(nonatomic,strong)UIButton * bottomBtn;
@property(nonatomic,copy)void(^btnBlock)(UIButton* sender);
@end
