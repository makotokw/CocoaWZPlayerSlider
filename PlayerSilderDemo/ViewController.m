//
//  ViewController.m
//  PlayerSilderDemo
//
//  Copyright (c) 2014 makoto_kw. All rights reserved.
//

#import "ViewController.h"
#import "WZYPlayerSlider.h"

@interface ViewController ()

@end

@implementation ViewController

{
    IBOutlet WZYPlayerSlider *_playerSlider1;
    IBOutlet WZYPlayerSlider *_playerSlider2;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    _playerSlider1.duration = 60.0f;
    _playerSlider1.availableDuration = 30.0f;
    _playerSlider2.duration = 6000.0f;
    _playerSlider2.availableDuration = 6000.0f;
    _playerSlider2.popoverEnabled = YES;
    
    self.view.backgroundColor = [UIColor blackColor];
    
    dispatch_async(dispatch_queue_create("com.makotokw.ios.PlayerSilderDemo", NULL), ^{
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
