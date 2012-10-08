//
//  VBChooseLanguageViewController.m
//  LocalVC
//
//  Created by Ariel Rodriguez on 10/8/12.
//  Copyright (c) 2012 Ariel Rodriguez. All rights reserved.
//

#import "VBChooseLanguageViewController.h"

@interface VBChooseLanguageViewController ()
@property (nonatomic, strong) NSArray *languages;
@end

@implementation VBChooseLanguageViewController
@synthesize languages;
- (id)initWithCoder:(NSCoder *)aDecoder {
  self = [super initWithCoder:aDecoder];
  if ( self != nil ) {
    NSDictionary *fr = [[NSDictionary alloc] initWithObjectsAndKeys:
                        @"fr", @"code",
                        @"français", @"name", nil];
    NSDictionary *es = [[NSDictionary alloc] initWithObjectsAndKeys:
                        @"es", @"code",
                        @"español", @"name", nil];
    NSDictionary *en = [[NSDictionary alloc] initWithObjectsAndKeys:
                        @"en", @"code",
                        @"english", @"name", nil];
    NSArray *tmp = [[NSArray alloc] initWithObjects:fr, es, en, nil];
    [self setLanguages:tmp];
  }
  return self;
}

- (void)viewDidLoad {
  [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
  return 1;
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section {
  return [[self languages] count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  static NSString *CellIdentifier = @"LanguaceCell";
  UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
  NSDictionary *lang = [[self languages] objectAtIndex:[indexPath row]];
  [[cell textLabel] setText:[lang objectForKey:@"name"]];
  
  return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
  [tableView deselectRowAtIndexPath:indexPath
                           animated:YES];
  if ( [self chooseLanguageDelegate] != nil ) {
    NSDictionary *lang = [[self languages] objectAtIndex:[indexPath row]];
    [[self chooseLanguageDelegate] languageSelected:[lang objectForKey:@"code"]];
  }
}

@end
