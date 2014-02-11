//
//  MCImagePickerViewController.h
//  CocoaGram
//
//  Created by Christopher Rittersdorf on 2/10/14.
//  Copyright (c) 2014 Christopher Rittersdorf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MCImagePickerViewController : UIImagePickerController<UINavigationControllerDelegate, UIImagePickerControllerDelegate>

@property (nonatomic, strong) UIImage *selectedImage;
@end
