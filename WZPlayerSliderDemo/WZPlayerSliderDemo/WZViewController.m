//
//  WZViewController.m
//  WZPlayerSliderDemo
//
//  Copyright (c) 2013 makoto_kw. All rights reserved.
//

#import "WZViewController.h"
#import "WZPlayerSlider.h"

@interface WZViewController ()

@end

@implementation WZViewController

@synthesize playerSlider1 = _playerSlider1;
@synthesize playerSlider2 = _playerSlider2;

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _playerSlider1.duration = 60.0f;
    _playerSlider1.availableDuration = 30.0f;
    _playerSlider2.duration = 6000.0f;
    _playerSlider2.availableDuration = 6000.0f;
    _playerSlider2.popoverEnabled = YES;
    
    self.view.backgroundColor = [UIColor blackColor];

    dispatch_async(dispatch_queue_create("com.makotokw.ios.WZPlayerSliderDemo", NULL), ^{
        while (true) {
            dispatch_async(dispatch_get_main_queue(), ^{
               _playerSlider1.availableDuration += 1.0f;
               if (_playerSlider1.duration < _playerSlider1.availableDuration) {
                   _playerSlider1.availableDuration = 0.0;
               }
            });
            sleep(1);
        }
    });
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return YES;
}

@end
