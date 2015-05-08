//
//  main.m
//  PigLatin
//
//  Created by Jeremy Petter on 2015-05-08.
//  Copyright (c) 2015 Jeremy Petter. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSString* string = @"thisaaaa iseee myiii stringooo";
        NSLog(@"%@", [string stringByPigLatinization]);
        
    }
    return 0;
}
