//
//  sampleStore.m
//  Smokalyzer
//
//  Created by johannes on 4/8/14.
//  Copyright (c) 2014 Andrew Robinson. All rights reserved.
//

#import "sampleStore.h"
#import "AppDelegate.h" //Import App Delegate


@implementation sampleStore




- (id)init
{
    self = [super init];
    
    if (self)
    {
        AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate]; //Get reference to App Delegate
        context = [appDelegate sharedContext]; //Save the pointer to the shared context
    }
    
    return self;
}
@end

