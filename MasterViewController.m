//
//  MasterViewController.m
//  PasteCanvasiPad
//
//  Created by Daniel Williamson on 22/07/2014.
//  Copyright (c) 2014 DWApps. All rights reserved.
//

#import "MasterViewController.h"

@interface MasterViewController ()

@end

@implementation MasterViewController

@synthesize textView;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    textView.text = @"<- Choose An Item";
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:(@selector(UpdateText)) name:@"Refresh" object:nil];
    
 }
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(void)UpdateText{
    
    textView.text = [[NSUserDefaults standardUserDefaults] objectForKey:@"Data"];
}

@end
