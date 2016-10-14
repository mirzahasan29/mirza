//
//  SecondTableViewCell.m
//  AgeCalculator
//
//  Created by Mirza Rishad Hasan on 6/12/16.
//  Copyright © 2016 Mirza Rishad Hasan. All rights reserved.
//

#import "SecondTableViewCell.h"

@implementation SecondTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


-(IBAction)switchPressed {
    
    if (mySwitch.on) {
        lblColor.textColor = [UIColor redColor];
    } else {
        lblColor.textColor = [UIColor greenColor];
        
    }
}

@end
