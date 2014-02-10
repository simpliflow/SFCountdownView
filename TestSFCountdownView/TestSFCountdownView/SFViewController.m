//
//  SFViewController.m
//  SFCountdownView
//
//  Created by Thomas Winkler on 10/02/14.
//  Copyright (c) 2014 Simpliflow. All rights reserved.
//

#import "SFViewController.h"

@interface SFViewController ()
@property (weak, nonatomic) IBOutlet SFCountdownView *sfCountdownView;

@end

@implementation SFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.sfCountdownView.delegate = self;
    self.sfCountdownView.backgroundAlpha = 0.2;
    self.sfCountdownView.countdownColor = [UIColor blackColor];
    self.sfCountdownView.countdownFrom = 3;
    self.sfCountdownView.finishText = @"Do it";
    [self.sfCountdownView updateAppearance];
    
}

- (void) viewDidAppear:(BOOL)animated
{
    [self.sfCountdownView start];
}

- (void) countdownFinished:(SFCountdownView *)view
{
    [self.sfCountdownView removeFromSuperview];
    [self.view setNeedsDisplay];
}

@end
