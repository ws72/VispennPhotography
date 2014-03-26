//
//  NewsDetailVC.m
//  VispennPhotography
//
//  Created by penn on 9/06/13.
//  Copyright (c) 2013 penn. All rights reserved.
//

#import "NewsDetailVC.h"

@interface NewsDetailVC ()

@end

@implementation NewsDetailVC

@synthesize btnBack,newsdetail,imagesrc,newsTitle, newsImageView, newsDetailView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    newsImageView.image =[UIImage imageNamed:imagesrc];//set news image
    newsDetailView.text=newsdetail;// set news detail
    UIFont *font = [UIFont fontWithName:@"Helvetica-Light" size:16];//set font of news detail
    newsDetailView.font=font;//set font of news detail
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

- (IBAction)fClose:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:NULL];
}

@end
