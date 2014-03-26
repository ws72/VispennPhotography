//
//  MapVC.m
//  TemplateTwoOnlineTennisStore
//
//  Created by Konstantin Pinchuk on 7/05/13.
//  Copyright (c) 2013 Konstantin Pinchuk. All rights reserved.
//

#import "MapVC.h"

@interface MapVC ()

@end

@implementation MapVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    if(UIDeviceOrientationIsPortrait([UIDevice currentDevice].orientation))
    {
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background_iPhone.png"]];
    }
    if (UIDeviceOrientationIsLandscape([UIDevice currentDevice].orientation))
    {
        self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"background_iPhone_landscape.png"]];
    }
}


@end
