//
//  DataFile.h
//  TemplateTwoOnlineTennisStore
//
//  Created by Konstantin Pinchuk on 7/05/13.
//  Copyright (c) 2013 Konstantin Pinchuk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DataFile : NSObject
{
    NSMutableArray * allData;
}

@property (nonatomic, strong) NSMutableArray * allData;

@end
