//
//  AppDelegate.h
//  Smokalyzer
//
//  Created by Andrew Robinson on 10/29/12.
//  Copyright (c) 2012 Andrew Robinson. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h> //Import so we can work with Core Data


@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    NSManagedObjectModel *sharedModel; //holder for our model
    NSManagedObjectContext *sharedContext; //holder for our context
}

@property (strong, nonatomic) UIWindow *window;
- (NSManagedObjectModel *)sharedModel; //Getter for our instance variable
- (NSManagedObjectContext *)sharedContext; //Getter for our instance variable

@end
