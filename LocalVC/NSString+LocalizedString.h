//
//  NSString+LocalizedString.h
//  LocalVC
//
//  Created by Ariel Rodriguez on 10/8/12.
//  Copyright (c) 2012 Ariel Rodriguez. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (LocalizedString)
/**
 @discussion Used to load the localised string from the appropriate bundle dynamically. Based on http://learning-ios.blogspot.com.ar/2011/04/advance-localization-in-ios-apps.html
 @param key identifier of the string in the localizable.strings file
 @param language code
 @return the localized string
 */
+ (NSString *)localizedStringForKey:(NSString *)key
                           language:(NSString *)language;
@end
