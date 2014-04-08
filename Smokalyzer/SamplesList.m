//
//  SamplesList.m
//  Smokalyzer
//
//  Created by johannes on 4/7/14.
//  Copyright (c) 2014 Andrew Robinson. All rights reserved.
//

#import "SamplesList.h"
#import "AppDelegate.h"
#import "SampleCoreItem.h"


@interface SamplesList ()


@end

@implementation SamplesList

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        
        [self setTitle:@"Inventory List"];
        
        samples = [[NSMutableArray alloc] init]; //initialize our array
        
        //Add a button to our navigation controller to create new objects
        UIBarButtonItem *addItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addItem)];
        [[self navigationItem] setRightBarButtonItem:addItem];

    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    //Return the number of sections in the table we only have one right now.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //Return the number of rows in the section. Because we only have one section rows will represent the rows in that section
    return [samples count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    //Retrieve our cell if one has already been created in memory.
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell"];
    
    //If no cell is available create a new one
    if (!cell)
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"Cell"];
    }
    
    // Retrieve our item from our collection of CDItems
    SampleCoreItem *item = [samples objectAtIndex:[indexPath row]];
    
    //Display the information about our item in the cell
   // [[cell textLabel] setText:[item name]];
    //[[cell detailTextLabel] setText:[item itemType]];
    
    return cell;
}


@end
