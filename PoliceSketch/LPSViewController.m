//
//  LPSViewController.m
//  PoliceSketch
//
//  Created by Steven Masuch on 2014-07-20.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "LPSViewController.h"
#import "Face.h"

@interface LPSViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *eyeImageView;
@property (nonatomic, strong) Face *faceControl;

@end

@implementation LPSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.faceControl = [Face new];
    
    self.eyeImageView.image = [UIImage imageNamed:[self.faceControl getFeature:eyes]];
    
    
    // Here is where you will create the buttons & image views and add them to the view.
}

- (IBAction)nextEyeButton:(id)sender {
    [self.faceControl changeFeature:eyes inDirection:forwards];
    self.eyeImageView.image = [UIImage imageNamed:[self.faceControl getFeature:eyes]];

}
- (IBAction)previousEyeButton:(id)sender {
    [self.faceControl changeFeature:eyes inDirection:backwards];
    self.eyeImageView.image = [UIImage imageNamed:[self.faceControl getFeature:eyes]];


}




@end
