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
@synthesize windowController;

- (void)applicationDidFinishLaunching:(UIApplication *)application {
   [window addSubview:windowController.view];

   // Override point for customization after application launch
   [window makeKeyAndVisible];
   [self launchCamera];
}

- (void) launchCamera {
   UIImagePickerController *cameraController = [[UIImagePickerController alloc] init];
   cameraController.sourceType = UIImagePickerControllerSourceTypeCamera;
   cameraController.delegate = self;
   // cameraController.showsCameraControls = NO;
   [windowController presentModalViewController:cameraController animated:NO];
   [cameraController release];
}

- (void) launchCamera:(UIImage*)image
            didFinishSavingWithError:(NSError *)error contextInfo:(void *)contextInfo {
   [self launchCamera];
}

- (void)imagePickerController:(UIImagePickerController *)picker
               didFinishPickingMediaWithInfo:(NSDictionary *)info {
   UIImage *image = [info objectForKey:UIImagePickerControllerOriginalImage];
   UIImageWriteToSavedPhotosAlbum(image,
         self, @selector(launchCamera:didFinishSavingWithError:contextInfo:), nil);
   [picker dismissModalViewControllerAnimated:NO];
}

- (void)dealloc {
   [windowController release];
   [window release];
   [super dealloc];
}


@end
