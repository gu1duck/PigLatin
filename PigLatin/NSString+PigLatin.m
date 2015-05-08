//
//  NSString+PigLatin.m
//  PigLatin
//
//  Created by Jeremy Petter on 2015-05-08.
//  Copyright (c) 2015 Jeremy Petter. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

-(NSString*) stringByPigLatinization
{
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiouAEIOU"];
    NSArray *stringArray = [self componentsSeparatedByString:@" "];
    
    NSString* modifiedString;
    NSString* placeholder;
    
    for (NSString* targetString in stringArray)
    {
        NSRange range = [targetString rangeOfCharacterFromSet:vowels];
        NSLog(@"%d",(int)range.location);

        if (!modifiedString)
        {
            modifiedString = placeholder;
        }
        else
        {
            modifiedString = [modifiedString stringByAppendingString:placeholder];
        }
        
        
        
    }
    return modifiedString;
}

@end
