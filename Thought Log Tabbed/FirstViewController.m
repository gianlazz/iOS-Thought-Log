//
//  FirstViewController.m
//  Thought Log Tabbed
//
//  Created by Gian Lazzarini on 1/21/13.
//  Copyright (c) 2013 Gian Lazzarini. All rights reserved.
//

#import "FirstViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController
@synthesize name;
@synthesize situation;
@synthesize emotions;
@synthesize thoughts;
@synthesize behavior;
@synthesize distortions;
@synthesize alternativebehavior;
@synthesize alternativethoughts;

- (IBAction)retractKeyBoard:(id)sender{
    [self resignFirstResponder];
}

- (IBAction)saveinfo:(id)sender {
    
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd 'at' HH:mm"];
    NSDate *date = [NSDate date];
    NSString *formattedDateString = [dateFormatter stringFromDate:date];
    
    NSString *resultLine=[NSString stringWithFormat:@"%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n%@\n\n",
                          formattedDateString,
                          self.name.text,
                          self.situation.text,
                          self.emotions.text,
                          self.thoughts.text,
                          self.behavior.text,
                          self.distortions.text,
                          self.alternativebehavior.text,
                          self.alternativethoughts.text];
    NSString *docPath =[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];
    //_resultview.text = docPath;
    NSString *logs=[docPath stringByAppendingPathComponent:@"log.txt"];
    
    if (![[NSFileManager defaultManager] fileExistsAtPath:logs]) {
        [[NSFileManager defaultManager]
         createFileAtPath:logs contents:nil attributes:nil];
    }
    NSFileHandle *fileHandle = [NSFileHandle fileHandleForUpdatingAtPath:logs];
    [fileHandle seekToEndOfFile];
    [fileHandle writeData:[resultLine dataUsingEncoding:NSUTF8StringEncoding]];
    [fileHandle closeFile];
    self.situation.text=@"";
    self.thoughts.text=@"";
    self.emotions.text=@"";
    self.behavior.text=@"";
    self.distortions.text=@"";
    self.alternativethoughts.text=@"";
    self.alternativebehavior.text=@"";
    NSLog(@"info saved");
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)dealloc {
}

@end
