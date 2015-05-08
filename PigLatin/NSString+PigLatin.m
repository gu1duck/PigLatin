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
    NSArray *stringArray = [self componentsSeparatedByString:@" "];
    NSString* modifiedString;
    for (NSString* targetString in stringArray)
    {
        [targetString stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"aeiouAEIOU"]];
        
        if (!modifiedString)
        {
            modifiedString = targetString;
        }
        else
        {
            modifiedString= [modifiedString stringByAppendingString:targetString];
        }
    }
    return modifiedString;
}

@end
