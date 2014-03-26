//
//  ProductListingVC.h
//  TemplateTwoOnlineTennisStore
//
//  Created by Konstantin Pinchuk on 14/05/13.
//  Copyright (c) 2013 Konstantin Pinchuk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataFile.h"

@interface GalleryVC : UIViewController 
{
    IBOutlet UICollectionView * collectionView;
    IBOutlet UINavigationBar  * navBar;
    
    IBOutlet UILabel  * titleStr;
    
    NSArray * categorySet;
    NSString * category;
    DataFile * dataFile;
}

@property (nonatomic, strong) IBOutlet UICollectionView * collectionView;
@property (nonatomic, strong) IBOutlet UINavigationBar  * navBar;
@property (nonatomic, strong) IBOutlet UILabel  * titleStr;
@property (nonatomic, strong) NSArray * categorySet;
@property (nonatomic, strong) NSString * category;
@property (nonatomic, strong) DataFile * dataFile;


- (IBAction)fClose:(id)sender;
- (IBAction)fDismissOnConfirm:(id)sender;

@end
