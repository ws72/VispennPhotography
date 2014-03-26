//
//  DataFile.m
//  vispenn 
//
//  Created by penn on 4/05/13.
//  Copyright (c) 2013 KP. All rights reserved.
//

#import "DataFile.h"
#import "StoreItem.h"

@implementation DataFile
@synthesize allData;

- (id) init
{
    allData = [[NSMutableArray alloc] init];
    
    // WEDDING image config
    StoreItem * wedding1 = [[StoreItem alloc] init];
    //set item image resource
    wedding1.itemImage = [UIImage imageNamed:@"wedding1.jpg"];
    //set category name
    wedding1.itemCategory = @"WEDDING";

    StoreItem * wedding2 = [[StoreItem alloc] init];
    wedding2.itemImage = [UIImage imageNamed:@"wedding2.jpg"];
    wedding2.itemCategory = @"WEDDING";
    
    StoreItem * wedding3 = [[StoreItem alloc] init];
    wedding3.itemImage = [UIImage imageNamed:@"wedding3.jpg"];
    wedding3.itemCategory = @"WEDDING";
    
    StoreItem * wedding4 = [[StoreItem alloc] init];
    wedding4.itemImage = [UIImage imageNamed:@"wedding4.jpg"];
    wedding4.itemCategory = @"WEDDING";
    
    StoreItem * wedding5 = [[StoreItem alloc] init];
    wedding5.itemImage = [UIImage imageNamed:@"wedding5.jpg"];
    wedding5.itemCategory = @"WEDDING";
    
    StoreItem * wedding6 = [[StoreItem alloc] init];
    wedding6.itemImage = [UIImage imageNamed:@"wedding6.jpg"];
    wedding6.itemCategory = @"WEDDING";
    
    StoreItem * wedding7 = [[StoreItem alloc] init];
    wedding7.itemImage = [UIImage imageNamed:@"wedding7.jpg"];
    wedding7.itemCategory = @"WEDDING";
    
    StoreItem * wedding8 = [[StoreItem alloc] init];
    wedding8.itemImage = [UIImage imageNamed:@"wedding8.jpg"];
    wedding8.itemCategory = @"WEDDING";
    
    //add each configuration into array
    [allData addObject:wedding1];
    [allData addObject:wedding2];
    [allData addObject:wedding3];
    [allData addObject:wedding4];
    [allData addObject:wedding5];
    [allData addObject:wedding6];
    [allData addObject:wedding7];
    [allData addObject:wedding8];
    
    // NEWBORN BABY image config
    StoreItem * newborn1 = [[StoreItem alloc] init];
    newborn1.itemImage = [UIImage imageNamed:@"newborn1.jpg"];
    newborn1.itemCategory = @"NEWBORN BABY";
    
    StoreItem * newborn2 = [[StoreItem alloc] init];
    newborn2.itemImage = [UIImage imageNamed:@"newborn2.jpg"];
    newborn2.itemCategory = @"NEWBORN BABY";
    
    StoreItem * newborn3 = [[StoreItem alloc] init];
    newborn3.itemImage = [UIImage imageNamed:@"newborn3.jpg"];
    newborn3.itemCategory = @"NEWBORN BABY";
    
    StoreItem * newborn4 = [[StoreItem alloc] init];
    newborn4.itemImage = [UIImage imageNamed:@"newborn4.jpg"];
    newborn4.itemCategory = @"NEWBORN BABY";
    
    
    StoreItem * newborn5 = [[StoreItem alloc] init];
    newborn5.itemImage = [UIImage imageNamed:@"newborn5.jpg"];
    newborn5.itemCategory = @"NEWBORN BABY";
    
    StoreItem * newborn6 = [[StoreItem alloc] init];
    newborn6.itemImage = [UIImage imageNamed:@"newborn6.jpg"];
    newborn6.itemCategory = @"NEWBORN BABY";
    
    StoreItem * newborn7 = [[StoreItem alloc] init];
    newborn7.itemImage = [UIImage imageNamed:@"newborn7.jpg"];
    newborn7.itemCategory = @"NEWBORN BABY";
    
    [allData addObject:newborn1];
    [allData addObject:newborn2];
    [allData addObject:newborn3];
    [allData addObject:newborn4];
    [allData addObject:newborn5];
    [allData addObject:newborn6];
    [allData addObject:newborn7];
    
        // FASHION image config
    StoreItem * fashion1 = [[StoreItem alloc] init];
    fashion1.itemImage = [UIImage imageNamed:@"fashion1.jpg"];
    fashion1.itemCategory = @"FASHION";
    
    StoreItem * fashion2 = [[StoreItem alloc] init];
    fashion2.itemImage = [UIImage imageNamed:@"fashion2.jpg"];
    fashion2.itemCategory = @"FASHION";
    
    StoreItem * fashion3 = [[StoreItem alloc] init];
    fashion3.itemImage = [UIImage imageNamed:@"fashion3.jpg"];
    fashion3.itemCategory = @"FASHION";
    
    StoreItem * fashion4 = [[StoreItem alloc] init];
    fashion4.itemImage = [UIImage imageNamed:@"fashion4.jpg"];
    fashion4.itemCategory = @"FASHION";
    
    StoreItem * fashion5 = [[StoreItem alloc] init];
    fashion5.itemImage = [UIImage imageNamed:@"fashion5.jpg"];
    fashion5.itemCategory = @"FASHION";
    
    StoreItem * fashion6 = [[StoreItem alloc] init];
    fashion6.itemImage = [UIImage imageNamed:@"fashion6.jpg"];
    fashion6.itemCategory = @"FASHION";
    
    StoreItem * fashion7 = [[StoreItem alloc] init];
    fashion7.itemImage = [UIImage imageNamed:@"fashion7.jpg"];
    fashion7.itemCategory = @"FASHION";
    
    StoreItem * fashion8 = [[StoreItem alloc] init];
    fashion8.itemImage = [UIImage imageNamed:@"fashion8.jpg"];
    fashion8.itemCategory = @"FASHION";
    
    [allData addObject:fashion1];
    [allData addObject:fashion2];
    [allData addObject:fashion3];
    [allData addObject:fashion4];
    [allData addObject:fashion5];
    [allData addObject:fashion6];
    [allData addObject:fashion7];
    [allData addObject:fashion8];
    
        // CONCERT image config
    StoreItem * concert1 = [[StoreItem alloc] init];
    concert1.itemImage = [UIImage imageNamed:@"concerts1.jpg"];
    concert1.itemCategory = @"CONCERT";
    
    StoreItem * concert2 = [[StoreItem alloc] init];
    concert2.itemImage = [UIImage imageNamed:@"concerts2.jpg"];
    concert2.itemCategory = @"CONCERT";
    
    StoreItem * concert3 = [[StoreItem alloc] init];
    concert3.itemImage = [UIImage imageNamed:@"concerts3.jpg"];
    concert3.itemCategory = @"CONCERT";
    
    StoreItem * concert4 = [[StoreItem alloc] init];
    concert4.itemImage = [UIImage imageNamed:@"concerts4.jpg"];
    concert4.itemCategory = @"CONCERT";
    
    StoreItem * concert5 = [[StoreItem alloc] init];
    concert5.itemImage = [UIImage imageNamed:@"concerts5.jpg"];
    concert5.itemCategory = @"CONCERT";
    
    StoreItem * concert6 = [[StoreItem alloc] init];
    concert6.itemImage = [UIImage imageNamed:@"concerts6.jpg"];
    concert6.itemCategory = @"CONCERT";
    
    StoreItem * concert7 = [[StoreItem alloc] init];
    concert7.itemImage = [UIImage imageNamed:@"concerts7.jpg"];
    concert7.itemCategory = @"CONCERT";
    
    StoreItem * concert8 = [[StoreItem alloc] init];
    concert8.itemImage = [UIImage imageNamed:@"concerts8.jpg"];
    concert8.itemCategory = @"CONCERT";
    
    StoreItem * concert9 = [[StoreItem alloc] init];
    concert9.itemImage = [UIImage imageNamed:@"concerts9.jpg"];
    concert9.itemCategory = @"CONCERT";
    
    StoreItem * concert10 = [[StoreItem alloc] init];
    concert10.itemImage = [UIImage imageNamed:@"concerts10.jpg"];
    concert10.itemCategory = @"CONCERT";
    
    [allData addObject:concert1];
    [allData addObject:concert2];
    [allData addObject:concert3];
    [allData addObject:concert4];
    [allData addObject:concert5];
    [allData addObject:concert6];
    [allData addObject:concert7];
    [allData addObject:concert8];
    [allData addObject:concert9];
    [allData addObject:concert10];

    // PORTRAIT image config
    StoreItem * portrait1 = [[StoreItem alloc] init];
    portrait1.itemImage = [UIImage imageNamed:@"portraits1.jpg"];
    portrait1.itemCategory = @"PORTRAIT";
    
    StoreItem * portrait2 = [[StoreItem alloc] init];
    portrait2.itemImage = [UIImage imageNamed:@"portraits2.jpg"];
    portrait2.itemCategory = @"PORTRAIT";
    
    StoreItem * portrait3 = [[StoreItem alloc] init];
    portrait3.itemImage = [UIImage imageNamed:@"portraits3.jpg"];
    portrait3.itemCategory = @"PORTRAIT";
    
    StoreItem * portrait4 = [[StoreItem alloc] init];
    portrait4.itemImage = [UIImage imageNamed:@"portraits4.jpg"];
    portrait4.itemCategory = @"PORTRAIT";
    
    StoreItem * portrait5 = [[StoreItem alloc] init];
    portrait5.itemImage = [UIImage imageNamed:@"portraits5.jpg"];
    portrait5.itemCategory = @"PORTRAIT";
    
    StoreItem * portrait6 = [[StoreItem alloc] init];
    portrait6.itemImage = [UIImage imageNamed:@"portraits6.jpg"];
    portrait6.itemCategory = @"PORTRAIT";
    
    StoreItem * portrait7 = [[StoreItem alloc] init];
    portrait7.itemImage = [UIImage imageNamed:@"portraits7.jpg"];
    portrait7.itemCategory = @"PORTRAIT";
    
    StoreItem * portrait8 = [[StoreItem alloc] init];
    portrait8.itemImage = [UIImage imageNamed:@"portraits8.jpg"];
    portrait8.itemCategory = @"PORTRAIT";
    
    [allData addObject:portrait1];
    [allData addObject:portrait2];
    [allData addObject:portrait3];
    [allData addObject:portrait4];
    [allData addObject:portrait5];
    [allData addObject:portrait6];
    [allData addObject:portrait7];
    [allData addObject:portrait8];
    
    // list image configuration
    StoreItem * galleryList1 = [[StoreItem alloc] init];
    galleryList1.itemImage = [UIImage imageNamed:@"list_wedding.jpg"];
    galleryList1.itemCategory = @"Gallery";
    //set display category name
    galleryList1.selectedCategory=@"WEDDING";
    
    StoreItem * galleryList2 = [[StoreItem alloc] init];
    galleryList2.itemImage = [UIImage imageNamed:@"list_newborn.jpg"];
    galleryList2.itemCategory = @"Gallery";
    galleryList2.selectedCategory=@"NEWBORN BABY";
    
    StoreItem * galleryList3 = [[StoreItem alloc] init];
    galleryList3.itemImage = [UIImage imageNamed:@"list_fashion.jpg"];
    galleryList3.itemCategory = @"Gallery";
    galleryList3.selectedCategory=@"FASHION";
    
    StoreItem * galleryList4 = [[StoreItem alloc] init];
    galleryList4.itemImage = [UIImage imageNamed:@"list_concert.jpg"];
    galleryList4.itemCategory = @"Gallery";
    galleryList4.selectedCategory=@"CONCERT";
    
    StoreItem * galleryList5 = [[StoreItem alloc] init];
    galleryList5.itemImage = [UIImage imageNamed:@"list_portraits.jpg"];
    galleryList5.itemCategory = @"Gallery";
    galleryList5.selectedCategory=@"PORTRAIT";
    
    [allData addObject:galleryList1];
    [allData addObject:galleryList2];
    [allData addObject:galleryList3];
    [allData addObject:galleryList4];
    [allData addObject:galleryList5];
    return self;
}

@end
