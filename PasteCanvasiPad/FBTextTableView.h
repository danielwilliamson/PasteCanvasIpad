//
//  FBTextTableView.h
//  PasteCanvasiPad
//
//  Created by Daniel Williamson on 22/07/2014.
//  Copyright (c) 2014 DWApps. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Parse/Parse.h>
#import "MasterViewController.h"
@interface FBTextTableView : PFQueryTableViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) MasterViewController *detailViewController;

@end
