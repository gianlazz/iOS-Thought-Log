//
//  SecondViewController.m
//  Thought Log Tabbed
//
//  Created by Gian Lazzarini on 1/21/13.
//  Copyright (c) 2013 Gian Lazzarini. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController;
@synthesize resultview;

- (IBAction)retrieveinfo:(id)sender {
    NSString *docPath =[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES)objectAtIndex:0];
    //_resultview.text = docPath;
    NSString *logs=[docPath stringByAppendingPathComponent:@"log.txt"];
    if([[NSFileManager defaultManager] fileExistsAtPath:logs])
    {
        NSFileHandle *fileHandle = [NSFileHandle fileHandleForReadingAtPath:logs];
        NSString *logResults=[[NSString alloc]initWithData:[fileHandle availableData] encoding:NSUTF8StringEncoding];
        [fileHandle closeFile];
        self.resultview.text=logResults;
    }
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

@end
