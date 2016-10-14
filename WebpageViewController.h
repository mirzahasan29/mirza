//
//  WebpageViewController.h
//  AgeCalculator
//
//  Created by Mirza Rishad Hasan on 6/12/16.
//  Copyright © 2016 Mirza Rishad Hasan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WebpageViewController : UIViewController

@property (weak, nonatomic) IBOutlet UISegmentedControl *mySegement;

@property (weak, nonatomic) IBOutlet UIWebView *myWeb;

@property (weak, nonatomic) IBOutlet UISlider *mySlider;
@property (weak, nonatomic) IBOutlet UISwitch *mySwitch;
@property (weak, nonatomic) IBOutlet UIImageView *myImage;



- (IBAction)segmentClicked:(id)sender;

- (IBAction)sliderMoved:(id)sender;
- (IBAction)switchClicked:(id)sender;


@end
