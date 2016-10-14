//
//  WebpageViewController.m
//  AgeCalculator
//
//  Created by Mirza Rishad Hasan on 6/12/16.
//  Copyright © 2016 Mirza Rishad Hasan. All rights reserved.
//

#import "WebpageViewController.h"

@interface WebpageViewController ()

@end

@implementation WebpageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *website=[NSString stringWithFormat:@"http://www.msn.com"];
    NSURL *myurl= [NSURL URLWithString:website];
    NSURLRequest *myrequest= [NSURLRequest requestWithURL:myurl];
    [_myWeb loadRequest:myrequest];
    
    _mySwitch.on=NO;
    
    
}
//
//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}



- (IBAction)segmentClicked:(id)sender {
    
//    switch (self.mySegement.selectedSegmentIndex) {
//        case 0:
//            _mySlider.value = self.mySegement.selectedSegmentIndex;
//            
//            break;
//        case 1:
//            _mySlider.value = self.mySegement.selectedSegmentIndex;
//            break;
//        case 2:
//            _mySlider.value = self.mySegement.selectedSegmentIndex;
//            break;
//        case 3:
//            _mySlider.value = self.mySegement.selectedSegmentIndex;
//            break;
//        default:
//            break;
//    }
    
    
    
    if (_mySegement.selectedSegmentIndex==0) {
        _mySlider.value = self.mySegement.selectedSegmentIndex;
        _mySwitch.on = NO;
        _myImage.image = [UIImage imageNamed:@"msn.png"];
        NSString *website=[NSString stringWithFormat:@"http://www.msn.com"];
        NSURL *myurl= [NSURL URLWithString:website];
        NSURLRequest *myrequest= [NSURLRequest requestWithURL:myurl];
        [_myWeb loadRequest:myrequest];
    }
    if (_mySegement.selectedSegmentIndex==1) {
        _mySlider.value = self.mySegement.selectedSegmentIndex;
        _mySwitch.on = YES;
        _myImage.image = [UIImage imageNamed:@"yahoo.png"];
        NSString *website=[NSString stringWithFormat:@"http://www.yahoo.com"];
        NSURL *myurl= [NSURL URLWithString:website];
        NSURLRequest *myrequest= [NSURLRequest requestWithURL:myurl];
        [_myWeb loadRequest:myrequest];
    }
    if (_mySegement.selectedSegmentIndex==2) {
        _mySlider.value = self.mySegement.selectedSegmentIndex;
        _mySwitch.on = NO;
        _myImage.image = [UIImage imageNamed:@"google.png"];
        NSString *website=[NSString stringWithFormat:@"http://www.google.com"];
        NSURL *myurl= [NSURL URLWithString:website];
        NSURLRequest *myrequest= [NSURLRequest requestWithURL:myurl];
        [_myWeb loadRequest:myrequest];
    }
    if (_mySegement.selectedSegmentIndex==3) {
        _mySlider.value = self.mySegement.selectedSegmentIndex;
        _mySwitch.on = YES;
        _myImage.image = [UIImage imageNamed:@"bing.png"];
        NSString *website=[NSString stringWithFormat:@"http://www.bing.com"];
        NSURL *myurl= [NSURL URLWithString:website];
        NSURLRequest *myrequest= [NSURLRequest requestWithURL:myurl];
        [_myWeb loadRequest:myrequest];
    }
}

- (IBAction)sliderMoved:(id)sender {
    
    if ((int)self.mySlider.value ==0) {
        _mySegement.selectedSegmentIndex=(int)self.mySlider.value;
        _mySwitch.on = NO;
        _myImage.image = [UIImage imageNamed:@"msn.png"];
        NSString *website=[NSString stringWithFormat:@"http://www.msn.com"];
        NSURL *myurl= [NSURL URLWithString:website];
        NSURLRequest *myrequest= [NSURLRequest requestWithURL:myurl];
        [_myWeb loadRequest:myrequest];
        
    }
    if ((int)self.mySlider.value ==1) {
        _mySegement.selectedSegmentIndex=(int)self.mySlider.value;
        _mySwitch.on = YES;
        _myImage.image = [UIImage imageNamed:@"yahoo.png"];
        _myImage.image = [UIImage imageNamed:@"yahoo.png"];
        NSString *website=[NSString stringWithFormat:@"http://www.yahoo.com"];
        NSURL *myurl= [NSURL URLWithString:website];
        NSURLRequest *myrequest= [NSURLRequest requestWithURL:myurl];
        [_myWeb loadRequest:myrequest];
    }
    if ((int)self.mySlider.value ==2) {
        _mySegement.selectedSegmentIndex=(int)self.mySlider.value;
        _mySwitch.on = NO;
        _myImage.image = [UIImage imageNamed:@"google.png"];
        NSString *website=[NSString stringWithFormat:@"http://www.google.com"];
        NSURL *myurl= [NSURL URLWithString:website];
        NSURLRequest *myrequest= [NSURLRequest requestWithURL:myurl];
        [_myWeb loadRequest:myrequest];

    }
    if ((int)self.mySlider.value ==3) {
        _mySegement.selectedSegmentIndex=(int)self.mySlider.value;
        _mySwitch.on = YES;
        _myImage.image = [UIImage imageNamed:@"bing.png"];
        _myImage.image = [UIImage imageNamed:@"bing.png"];
        NSString *website=[NSString stringWithFormat:@"http://www.bing.com"];
        NSURL *myurl= [NSURL URLWithString:website];
        NSURLRequest *myrequest= [NSURLRequest requestWithURL:myurl];
        [_myWeb loadRequest:myrequest];
    }
}

- (IBAction)switchClicked:(id)sender {
    
    if (_mySwitch.on) {
        _mySlider.value = 3;
        _mySegement.selectedSegmentIndex=(int)self.mySlider.value;
        _myImage.image = [UIImage imageNamed:@"bing.png"];
        _myImage.image = [UIImage imageNamed:@"bing.png"];
        NSString *website=[NSString stringWithFormat:@"http://www.bing.com"];
        NSURL *myurl= [NSURL URLWithString:website];
        NSURLRequest *myrequest= [NSURLRequest requestWithURL:myurl];
        [_myWeb loadRequest:myrequest];
    }
    if (_mySwitch.on==NO) {
        _mySlider.value = 0;
        _mySegement.selectedSegmentIndex=(int)self.mySlider.value;
        _myImage.image = [UIImage imageNamed:@"msn.png"];
        NSString *website=[NSString stringWithFormat:@"http://www.msn.com"];
        NSURL *myurl= [NSURL URLWithString:website];
        NSURLRequest *myrequest= [NSURLRequest requestWithURL:myurl];
        [_myWeb loadRequest:myrequest];
    }
    
    
}
@end
