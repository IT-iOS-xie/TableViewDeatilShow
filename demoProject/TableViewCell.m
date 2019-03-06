//
//  TableViewCell.m
//  demoProject
//
//  Created by xie on 2017/12/15.
//  Copyright © 2017年 abadou. All rights reserved.
//43434343411111111
#import <Masonry.h>
#import "TableViewCell.h"
@interface TableViewCell()



@end
@implementation TableViewCell

- (void)awakeFromNib {
<<<<<<< HEAD
    [super awakeFromNib];
    // Initialization codererere
=======
    [super awakeFromNib];//434343434343434
    // Initialization code442342424242424
>>>>>>> 2019.3.6
    
}

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    if (self = [super initWithStyle:UITableViewCellStyleDefault reuseIdentifier:reuseIdentifier]) {
        self.view1 = [[UIView alloc]init];
        
        [self addSubview:self.view1];
        
        [self.view1 mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.mas_equalTo(self);
            make.left.right.mas_equalTo(self);
            make.height.mas_equalTo(50);
        }];
        self.view1.backgroundColor = [UIColor grayColor];
        self.bottomBtn = [[UIButton alloc]init];
        
        [self addSubview:self.bottomBtn];
        
        [self.bottomBtn mas_makeConstraints:^(MASConstraintMaker *make) {
            make.bottom.mas_equalTo(self);
            make.right.mas_equalTo(self);
            
            make.width.mas_equalTo(100);
            make.height.mas_equalTo(40);
        }];
        
        
        [self.bottomBtn setTitle:@"用户留言" forState:UIControlStateNormal];
        
        [self.bottomBtn setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        [self.bottomBtn addTarget:self action:@selector(bottomBtnClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
    
}

-(void)bottomBtnClick:(UIButton *)sender{
    self.btnBlock(sender);
    
    
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
//    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
