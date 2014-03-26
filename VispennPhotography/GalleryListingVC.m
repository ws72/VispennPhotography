//
//  ProductListingVC.m
//  TemplateTwoOnlineTennisStore
//
//  Created by penn on 14/05/13.
//  Copyright (c) 2013 Konstantin Pinchuk. All rights reserved.
//

#import "GalleryListingVC.h"
#import "StoreItem.h"
#import "ProductCell_iPhone.h"
@interface GalleryListingVC()

@end

@implementation GalleryListingVC
@synthesize navBar, collectionView, dataFile, category, categorySet,titleStr;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
        dataFile = [[DataFile alloc] init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //TODO sort the data file by the selected category
    NSPredicate * resultsPredicate = [NSPredicate predicateWithFormat:@"itemCategory contains [cd] %@", category];
    
     //assign data from data file to our own collectionView data source
    if([category length] > 0)
    {
        categorySet = [dataFile.allData filteredArrayUsingPredicate:resultsPredicate];
    }
    else
    {
        categorySet = dataFile.allData;
    }
    //collection view layout presentation
    UICollectionViewFlowLayout * flowLayout = [[UICollectionViewFlowLayout alloc] init];
    if(category==@"PORTRAIT" || category==@"FASHION" )
    {
        //cell width and height, when create portrait or fashion collection view
        [flowLayout setItemSize:CGSizeMake(320, 480)];
    }else{
        //cell width and height, when create others collection view
        [flowLayout setItemSize:CGSizeMake(320, 213)]; //cell width and height
    }
    
    [flowLayout setSectionInset:UIEdgeInsetsMake(0, 0, 0, 0)]; // padding
    [flowLayout setScrollDirection:UICollectionViewScrollDirectionVertical];
    
    [flowLayout setMinimumLineSpacing:0.0f];// set line spacing
    [self.collectionView setCollectionViewLayout:flowLayout];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)fClose:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:NULL];
}

// compulsory methods for the collection view

- (NSInteger) numberOfSectionsInCollectionView:(UICollectionView *)collectionView
{
    return 1;
}

- (NSInteger) collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section
{
    //count how many items we have in the displayed category
    return [categorySet count];

}

- (UICollectionViewCell *) collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath
{
    StoreItem * selectedItem = [[StoreItem alloc] init];
    
    selectedItem = (StoreItem *)[categorySet objectAtIndex:indexPath.item];
    
    static NSString * cellIdentifier = @"cvCell";
    
    UINib * cellNib = [UINib nibWithNibName:@"ProductCell_iPhone" bundle:nil];
    [self.collectionView registerNib:cellNib forCellWithReuseIdentifier:cellIdentifier];
    
    ProductCell_iPhone * cell = (ProductCell_iPhone *)[self.collectionView dequeueReusableCellWithReuseIdentifier:cellIdentifier forIndexPath:indexPath];
    cell.cellLabel.text = @"";//selectedItem.itemName;
    cell.cellImage.image = selectedItem.itemImage; //set cell image
    titleStr.text=selectedItem.itemCategory;// set current category list
    titleStr.textColor= [UIColor darkGrayColor];

    return cell;

}

// Function called when selecting a cell
- (void) collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath
{
}

- (IBAction)fDismissOnConfirm:(id)sender
{
    [self dismissViewControllerAnimated:NO completion:NULL];
}




@end
