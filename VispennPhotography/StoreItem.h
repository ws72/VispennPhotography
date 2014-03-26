//
//  StoreItem.h
//  TemplateTwoOnlineTennisStore
//
//  Created by Konstantin Pinchuk on 7/05/13.
//  Copyright (c) 2013 Konstantin Pinchuk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StoreItem : NSObject
{
    int itemID;
    NSString * itemCategory;
    NSString * itemName;
    NSString * itemDescription;
    UIImage  * itemImage;
    float itemPrice;
    int itemQuantity;
    NSMutableArray * itemSizesSet;
    NSString * selectedCategory;
}

@property (nonatomic) int itemID;
@property (nonatomic) float itemPrice;
@property (nonatomic) int itemQuantity;


@property (nonatomic, strong) NSString * selectedCategory;

@property (nonatomic, strong) NSString * itemCategory;
@property (nonatomic, strong) NSString * itemName;
@property (nonatomic, strong) NSString * itemDescription;
@property (nonatomic, strong) UIImage  * itemImage;
@property (nonatomic, strong) NSMutableArray * itemSizesSet;

@end
