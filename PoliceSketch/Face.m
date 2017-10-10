//
//  Face.m
//  PoliceSketch
//
//  Created by Andrew on 2017-10-09.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import "Face.h"

@interface Face()
    @property (nonatomic, strong) NSArray<NSArray <NSString *>*> *facialFeatureImages;
    @property (nonatomic, strong) NSMutableArray<NSNumber *> *currentFacialFeature;
@end

@implementation Face

- (instancetype)init
{
    self = [super init];
    if (self) {
        
        NSArray *facialFeaturesToAdd = @[@"eyes", @"nose", @"mouth"];
        NSMutableArray<NSMutableArray<NSString *> *> *imageArray = [NSMutableArray new];
        
        for (NSString *feature in facialFeaturesToAdd) {
            NSMutableArray *featureImages = [NSMutableArray new];
            for (int i = 1; i <= 5; i++) {
                [featureImages addObject:[NSString stringWithFormat:@"%@_%d.jpg", feature, i]];
            }
            [imageArray addObject:featureImages];
        }
        _facialFeatureImages = imageArray;
        
        
        _currentFacialFeature = [NSMutableArray new];
        for (int i = 0; i < 3; i++) {
            [self.currentFacialFeature addObject:[NSNumber numberWithInt:arc4random_uniform(5)]];
        }
        

    }
    return self;
}

-(UIImage *)getNewFeature:(FacialFeature)facialFeature in:(MovementDirection)direction
{
    if ([self.currentFacialFeature[facialFeature] isEqual:@0]) {
        self.currentFacialFeature[facialFeature] = @5;
    }
    self.currentFacialFeature[facialFeature] = direction ?
        [NSNumber numberWithInt:(([self.currentFacialFeature[facialFeature] intValue] + 1) % 5)] :
        [NSNumber numberWithInt:(([self.currentFacialFeature[facialFeature] intValue] - 1) % 5)];
    
    return [UIImage imageNamed: [self.facialFeatureImages[facialFeature]
            objectAtIndex: [self.currentFacialFeature[facialFeature] intValue]]];

}

@end
