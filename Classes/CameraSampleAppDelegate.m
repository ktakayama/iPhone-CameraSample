//
//  CameraSampleAppDelegate.m
//  CameraSample
//
//  Created by Kyosuke Takayama on 09/11/26.
//  Copyright My Company 2009. All rights reserved.
//

#import "CameraSampleAppDelegate.h"

@implementation CameraSampleAppDelegate

@synthesize window;


- (void)applicationDidFinishLaunching:(UIApplication *)application {    

    // Override point for customization after application launch
    [window makeKeyAndVisible];
}


- (void)dealloc {
    [window release];
    [super dealloc];
}


@end
