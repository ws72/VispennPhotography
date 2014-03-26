//
//  NewsDetailVC.h
//  VispennPhotography
//
//  Created by penn on 9/06/13.
//  Copyright (c) 2013 penn. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NewsDetailVC : UIViewController
{
    IBOutlet UIImageView * newsImageView;
    IBOutlet UITextView * newsDetailView;
}

@property (nonatomic, strong) NSString * newsdetail; 
@property (nonatomic, strong) NSString * imagesrc;
@property (nonatomic, strong) NSString * newsTitle;
@property (nonatomic, strong) IBOutlet UIBarButtonItem * btnBack;
@property (nonatomic, strong) IBOutlet UIImageView * newsImageView;
@property (nonatomic, strong) IBOutlet UITextView * newsDetailView;

- (IBAction)fClose:(id)sender;



@end
