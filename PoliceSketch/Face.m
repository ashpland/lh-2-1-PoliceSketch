//
//  Face.m
//  PoliceSketch
//
//  Created by Andrew on 2017-10-09.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Face.h"

@implementation Face

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        _facialFeatureImages = @[
                             @[@"eyes_1.jpg",@"eyes_2.jpg",@"eyes_3.jpg",@"eyes_4.jpg",@"eyes_5.jpg"],                             @[@"nose_1.jpg",@"nose_2.jpg",@"nose_3.jpg",@"nose_4.jpg",@"nose_5.jpg"],                         @[@"mouth_1.jpg",@"mouth_2.jpg",@"mouth_3.jpg",@"mouth_4.jpg",@"mouth_5.jpg"]
                                 ];
        _currentFacialFeature = @[
                                  [NSNumber numberWithInt:arc4random_uniform(5)],
                                  [NSNumber numberWithInt:arc4random_uniform(5)],
                                  [NSNumber numberWithInt:arc4random_uniform(5)]
                                  ].mutableCopy;

    }
    return self;
}

-(void)changeFeature:(FacialFeature)facialFeature
         inDirection:(MovementDirection)direction
{
    self.currentFacialFeature[facialFeature] = direction ?
    [NSNumber numberWithInt:(([self.currentFacialFeature[facialFeature] intValue] + 1) % 5)] :
    [NSNumber numberWithInt:(([self.currentFacialFeature[facialFeature] intValue] - 1) % 5)];
}

-(NSString *)getFeature:(FacialFeature)facialFeature
{
    return [self.facialFeatureImages[facialFeature] objectAtIndex: [self.currentFacialFeature[facialFeature] intValue]];
}

@end
