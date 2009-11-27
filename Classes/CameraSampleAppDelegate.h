//
//  CameraSampleAppDelegate.h
//  CameraSample
//
//  Created by Kyosuke Takayama on 09/11/26.
//  Copyright My Company 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CameraSampleAppDelegate :
               NSObject <UIApplicationDelegate, UIImagePickerControllerDelegate> {
   UIWindow *window;
   UIViewController *windowController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UIViewController *windowController;

- (void) launchCamera;

@end

