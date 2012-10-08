//
//  VBViewController.h
//  LocalVC
//
//  Created by Ariel Rodriguez on 10/7/12.
//  Copyright (c) 2012 Ariel Rodriguez. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "VBChooseLanguageDelegate.h"

@interface VBViewController : UIViewController <VBChooseLanguageDelegate>
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end
