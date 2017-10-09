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
@property (weak, nonatomic) IBOutlet UIImageView *noseImageView;
@property (weak, nonatomic) IBOutlet UIImageView *mouthImageView;



@property (nonatomic, strong) Face *faceControl;

@end

@implementation LPSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    self.faceControl = [Face new];
    
    self.eyeImageView.image = [self.faceControl getNewFeature:eyes in:forwards];
    self.noseImageView.image = [self.faceControl getNewFeature:nose in:forwards];
    self.mouthImageView.image = [self.faceControl getNewFeature:mouth in:forwards];

    
    // Here is where you will create the buttons & image views and add them to the view.
}


- (IBAction)nextButton:(UIButton *)sender {
    switch (sender.tag) {
        case 0:
            self.eyeImageView.image = [self.faceControl getNewFeature:eyes in:forwards];
            break;
        case 1:
            self.noseImageView.image = [self.faceControl getNewFeature:nose in:forwards];
            break;
        case 2:
            self.mouthImageView.image = [self.faceControl getNewFeature:mouth in:forwards];
            break;
        default:
            break;
    }
}
- (IBAction)previousEyeButton:(UIButton *)sender {
    switch (sender.tag) {
        case 0:
            self.eyeImageView.image = [self.faceControl getNewFeature:eyes in:backwards];
            break;
        case 1:
            self.noseImageView.image = [self.faceControl getNewFeature:nose in:backwards];
            break;
        case 2:
            self.mouthImageView.image = [self.faceControl getNewFeature:mouth in:backwards];
            break;
        default:
            break;
    }
}




@end
