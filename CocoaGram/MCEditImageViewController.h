//
//  MCEditImageViewController.h
//  CocoaGram
//
//  Created by Christopher Rittersdorf on 2/10/14.
//  Copyright (c) 2014 Christopher Rittersdorf. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MCEditImageViewController : UIViewController

@property (nonatomic, strong) IBOutlet UIImage *image;
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end
