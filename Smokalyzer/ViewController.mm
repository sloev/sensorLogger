//
//  ViewController.m
//  Smokalyzer
//
//  Created by Andrew Robinson on 10/29/12.
//  Copyright (c) 2012 Andrew Robinson. All rights reserved.
//

#import "ViewController.h"
#include <pthread.h>


@interface ViewController ()


@end

@implementation ViewController
{
    

    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    hiJackMgr = [[HiJackMgr alloc] init];
    
    [hiJackMgr setDelegate:self];

}

- (int) receive:(UInt8)val
{

    return 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (void)viewDidUnload {
    [super viewDidUnload];
}





- (IBAction)knap:(UIButton *)sender {
    while(1){
    [hiJackMgr send:65];
    }
}
@end
