//
//  SecondTableViewCell.h
//  AgeCalculator
//
//  Created by Mirza Rishad Hasan on 6/12/16.
//  Copyright © 2016 Mirza Rishad Hasan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondTableViewCell : UITableViewCell {
    
    IBOutlet UILabel *lblColor;
    IBOutlet UISwitch *mySwitch;
    
}

-(IBAction)switchPressed;

@end
