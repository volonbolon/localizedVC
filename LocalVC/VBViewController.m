//
//  VBViewController.m
//  LocalVC
//
//  Created by Ariel Rodriguez on 10/7/12.
//  Copyright (c) 2012 Ariel Rodriguez. All rights reserved.
//

#import "VBViewController.h"
#import "NSString+LocalizedString.h"
#import "VBChooseLanguageViewController.h"

@interface VBViewController ()
/**
 @discussion Given the language code, it takes the localized strings and populates the widgets
 @param iso-639-1 language code 
 */
- (void)updateWidgets:(NSString *)languageCode;
@end

@implementation VBViewController
@synthesize label;
@synthesize button;

- (void)updateWidgets:(NSString *)languageCode {
  NSString *labelText = [NSString localizedStringForKey:@"GREETINGS"
                                               language:languageCode];
  [[self label] setText:labelText];
  NSString *buttonTitle = [NSString localizedStringForKey:@"BUTTON-TITLE"
                                                 language:languageCode];
  [[self button] setTitle:buttonTitle
                 forState:UIControlStateNormal];
}

- (void)viewDidLoad {
  [super viewDidLoad];
  [self updateWidgets:@"en"];
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue
                 sender:(id)sender {
  if ( [[segue identifier] isEqualToString:@"ChooseLanguageSegue"] ) {
    [(VBChooseLanguageViewController *)[segue destinationViewController] setChooseLanguageDelegate:self];
  }
}

#pragma mark - VBChooseLanguageDelegate
- (void)languageSelected:(NSString *)languageCode {
  [self updateWidgets:languageCode];
  [self dismissViewControllerAnimated:YES
                           completion:nil];
}

@end
