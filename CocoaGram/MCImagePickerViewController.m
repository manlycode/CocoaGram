//
//  MCImagePickerViewController.m
//  CocoaGram
//
//  Created by Christopher Rittersdorf on 2/10/14.
//  Copyright (c) 2014 Christopher Rittersdorf. All rights reserved.
//

#import "MCImagePickerViewController.h"

@interface MCImagePickerViewController ()

@end

@implementation MCImagePickerViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    self.sourceType = UIImagePickerControllerSourceTypeCamera;
    self.cameraFlashMode = UIImagePickerControllerCameraFlashModeOff;
    self.navigationBarHidden = YES;
    self.delegate = self;
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([segue.destinationViewController respondsToSelector:@selector(setImage:)]) {
        [segue.destinationViewController setValue:_selectedImage forKey:@"image"];
    } else {
        NSLog(@"DestinationController doesn't have property 'image'");
    }
}

#pragma mark -
#pragma mark UIImagePicerControllerDelegate methods

- (void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    _selectedImage = [info objectForKey:UIImagePickerControllerOriginalImage];
    [self performSegueWithIdentifier:@"editImage" sender:self];
}



@end
