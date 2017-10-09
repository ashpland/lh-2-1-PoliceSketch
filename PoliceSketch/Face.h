//
//  Face.h
//  PoliceSketch
//
//  Created by Andrew on 2017-10-09.
//  Copyright © 2017 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


typedef NS_ENUM(NSUInteger, FacialFeature) {
    eyes,
    nose,
    mouth,
};

typedef NS_ENUM(NSUInteger, MovementDirection) {
    backwards,
    forwards,
};

@interface Face : NSObject

- (UIImage *)getNewFeature:(FacialFeature)facialFeature in:(MovementDirection)direction;

@end
