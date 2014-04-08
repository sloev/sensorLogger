//
//  SampleCoreItem.h
//  Smokalyzer
//
//  Created by johannes on 4/8/14.
//  Copyright (c) 2014 Andrew Robinson. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface SampleCoreItem : NSManagedObject

@property (nonatomic, retain) NSDate * date;
@property (nonatomic, retain) NSString * place;
@property (nonatomic, retain) NSString * device;
@property (nonatomic, retain) NSString * message;

@end
