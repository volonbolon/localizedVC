//
//  NSString+LocalizedString.m
//  LocalVC
//
//  Created by Ariel Rodriguez on 10/8/12.
//  Copyright (c) 2012 Ariel Rodriguez. All rights reserved.
//

#import "NSString+LocalizedString.h"

@implementation NSString (LocalizedString)
+ (NSString *)localizedStringForKey:(NSString *)key
                           language:(NSString *)language {
  NSURL *url = [[NSBundle mainBundle] URLForResource:language
                                       withExtension:@"lproj"];
  NSBundle *languageBundle = [NSBundle bundleWithURL:url];
  return [languageBundle localizedStringForKey:key
                                         value:@""
                                         table:nil];
}
@end
