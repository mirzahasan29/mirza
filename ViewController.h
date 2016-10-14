//
//  ViewController.h
//  AgeCalculator
//
//  Created by Mirza Rishad Hasan on 6/12/16.
//  Copyright © 2016 Mirza Rishad Hasan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController {
    NSInteger currentYear;
    
    
}

@property (weak, nonatomic) IBOutlet UISlider *ageSlider;
@property (weak, nonatomic) IBOutlet UILabel *ageLbl;
@property (weak, nonatomic) IBOutlet UITextField *ageTxtField;

@property (weak, nonatomic) IBOutlet UIButton *btnGo;

- (IBAction)btnGoClicked:(id)sender;

- (IBAction)sliderMoved:(id)sender;



@end



//this is version 1.1 beta
//brand new changes
