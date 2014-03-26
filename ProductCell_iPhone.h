//
//  ProductCell_iPhone.h
//  TemplateTwoOnlineTennisStore
//
//  Created by Song Wang on 14/05/13.
//  Copyright (c) 2013 Konstantin Pinchuk. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ProductCell_iPhone : UICollectionViewCell
{
    IBOutlet UIImageView * cellImage;
    IBOutlet UILabel     * cellLabel;
}

@property(nonatomic, strong) IBOutlet UIImageView * cellImage;
@property(nonatomic, strong) IBOutlet UILabel     * cellLabel;

@end
