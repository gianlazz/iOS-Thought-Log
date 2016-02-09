//
//  FirstViewController.h
//  Thought Log Tabbed
//
//  Created by Gian Lazzarini on 1/21/13.
//  Copyright (c) 2013 Gian Lazzarini. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FirstViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *name;
@property (weak, nonatomic) IBOutlet UITextField *situation;
@property (weak, nonatomic) IBOutlet UITextField *emotions;
@property (weak, nonatomic) IBOutlet UITextField *thoughts;
@property (weak, nonatomic) IBOutlet UITextField *behavior;
@property (weak, nonatomic) IBOutlet UITextField *distortions;
@property (weak, nonatomic) IBOutlet UITextField *alternativebehavior;
@property (weak, nonatomic) IBOutlet UITextField *alternativethoughts;
- (IBAction)saveinfo:(id)sender;
- (IBAction)retractKeyBoard:(id)sender;

@end
