//
//  VBChooseLanguageViewController.h
//  LocalVC
//
//  Created by Ariel Rodriguez on 10/8/12.
//  Copyright (c) 2012 Ariel Rodriguez. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^LanguageSelectedBlock)(NSString *languageCode);

@interface VBChooseLanguageViewController : UITableViewController
@property (nonatomic, copy) LanguageSelectedBlock languageSelectedBlock;
@end
