//
//  PCIViewController.m
//  PasteCanvasiPad
//
//  Created by Daniel Williamson on 04/07/2014.
//  Copyright (c) 2014 DWApps. All rights reserved.
//

#import "PCIViewController.h"
#import <Parse/Parse.h>
#import "PCIAppDelegate.h"
@interface PCIViewController ()

@end

@implementation PCIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    PFObject *testObject = [PFObject objectWithClassName:@"Testing"];
    testObject[@"foo"] = @"bar";
    [testObject saveInBackground];}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)setupTapped:(id)sender {
    static NSString *tabViewControllerIdentifier = @"Split";
    
    UIViewController *controller = [self.storyboard instantiateViewControllerWithIdentifier:tabViewControllerIdentifier];
    PCIAppDelegate *app = (PCIAppDelegate *)[[UIApplication sharedApplication] delegate];
    
    UIViewController *currentController = app.window.rootViewController;
    app.window.rootViewController = controller;
    app.window.rootViewController = currentController;
    
    [UIView transitionWithView:self.navigationController.view.window
                      duration:0.75
                       options:UIViewAnimationOptionTransitionFlipFromRight
                    animations:^{
                        app.window.rootViewController = controller;
                    }
                    completion:nil];
}

@end
