//
//  WZPlayerSlider.h
//  WZPlayerSlider
//
//  Copyright (c) 2013 makoto_kw. All rights reserved.
//

#import <UIKit/UIKit.h>

@class WZPlayerSliderPopover;

@interface WZPlayerSlider : UISlider

@property(nonatomic,getter=isPopoverEnabled) BOOL popoverEnabled;
@property(nonatomic) WZPlayerSliderPopover *popover;
@property(nonatomic,assign) NSTimeInterval popoverAnimationDuration;

@property(nonatomic,assign) NSTimeInterval duration;
@property(nonatomic,assign) NSTimeInterval availableDuration;

- (void)setAvailableTrackImage:(UIImage *)image;

@end
