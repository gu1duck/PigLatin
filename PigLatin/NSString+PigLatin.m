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
    NSString* startOfWord;
    NSString* endOfWord;
    
    for (NSString* targetString in stringArray)
    {
        NSRange rangeOfVowel = [targetString rangeOfCharacterFromSet:vowels];
        
        startOfWord = [targetString substringToIndex:rangeOfVowel.location];
        endOfWord = [targetString substringFromIndex:rangeOfVowel.location];
        
        endOfWord = [endOfWord stringByAppendingString:startOfWord];
        endOfWord = [endOfWord stringByAppendingString:@"ay "];


        if (!modifiedString)
        {
            modifiedString = endOfWord;
        }
        else
        {
            modifiedString = [modifiedString stringByAppendingString:endOfWord];
        }
        
        //NSLog(@"%@",modifiedString);
        
    }
    return modifiedString;
}

@end
