//
//  ViewController.m
//  AgeCalculator
//
//  Created by Mirza Rishad Hasan on 6/12/16.
//  Copyright © 2016 Mirza Rishad Hasan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    currentYear = 2016;
    
    
    
}
//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}

- (IBAction)btnGoClicked:(id)sender {
    float age = [self.ageTxtField.text floatValue];
    self.ageLbl.text = [NSString stringWithFormat:@"You are born in: %.0f", (currentYear - age)];
//    self.ageSlider.value = [NSString stringWithFormat:@"%@",self.ageTxtField.text];
    
//    NSLog(@"float value is: %.0f", age);
    self.ageSlider.value = age;
    
    if (age<=30) {
        self.ageLbl.backgroundColor = [UIColor greenColor];
    }
    if (age>30 && age<=60) {
        self.ageLbl.backgroundColor = [UIColor blueColor];
    }
    if (age>60) {
        self.ageLbl.backgroundColor =[UIColor redColor];
    }
    
    
    
    
}

- (IBAction)sliderMoved:(id)sender {
    
    self.ageTxtField.text = [NSString stringWithFormat:@"%.0f",self.ageSlider.value];
    
    _ageLbl.text = [NSString stringWithFormat:@"You are born in: %.0f", (currentYear -_ageSlider.value)];
    
    if (_ageSlider.value<=30) {
        self.ageLbl.backgroundColor = [UIColor greenColor];
    }
    if (_ageSlider.value>30 && _ageSlider.value<=60) {
        self.ageLbl.backgroundColor = [UIColor blueColor];
    }
    if (self.ageSlider.value>60) {
        self.ageLbl.backgroundColor =[UIColor redColor];
    }
}
@end
