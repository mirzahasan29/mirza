//
//  FirstTableViewCell.h
//  AgeCalculator
//
//  Created by Mirza Rishad Hasan on 6/12/16.
//  Copyright © 2016 Mirza Rishad Hasan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstTableViewCell : UITableViewCell {
    IBOutlet UIButton *btnRIshad;
    IBOutlet UIButton *btnShoma;
    IBOutlet UILabel *lbl;
    
}
-(IBAction)rishadCLicked;
-(IBAction)shomaClicked;





@end
