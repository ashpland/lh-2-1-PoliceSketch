//
//  Face.h
//  PoliceSketch
//
//  Created by Andrew on 2017-10-09.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger {
    eyes,
    nose,
    mouth,
} FacialFeature;

typedef enum : NSUInteger {
    backwards,
    forwards,
} MovementDirection;

@interface Face : NSObject

@property (nonatomic, strong) NSArray<NSArray <NSString *>*> *facialFeatureImages;
@property (nonatomic, strong) NSMutableArray<NSNumber *> *currentFacialFeature;


- (void)changeFeature:(FacialFeature)facialFeature inDirection:(MovementDirection)direction;
- (NSString *)getFeature:(FacialFeature)facialFeature;


@end
