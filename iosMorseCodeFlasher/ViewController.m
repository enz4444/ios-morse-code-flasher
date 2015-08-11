//
//  ViewController.m
//  iosMorseCodeFlasher
//
//  Created by littlebeef on 8/8/15.
//  Copyright (c) 2015 Enlan. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    AVCaptureDevice *device = [AVCaptureDevice defaultDeviceWithMediaType:AVMediaTypeVideo];
    if ([device hasTorch]) {
        [device lockForConfiguration:nil];
        [device setTorchMode:AVCaptureTorchModeOn];  // use AVCaptureTorchModeOff to turn off
        [device unlockForConfiguration];
    }
    else{
        // pop up warning
    }
    
    NSTimer *beep = [NSTimer timerWithTimeInterval:2.0 target:self selector:@selector(shortBeep:) userInfo:nil repeats:NO];
    
}

- (void)shortBeep:(id)sender{
    
}

- (void)longBeep:(id)sender{
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
