//
//  main.m
//  Objc-chapter-3_3
//  Program 3.4 in Programming in Obj-C 4th Ed.
//  Goal: Accessing instance variables
//
//  Created by Leif Petersen on 13-02-14.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

//  @interface section

@interface Fraction: NSObject

-(void) print; 
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;

// those are the same old boring declarations from before (program 3.2 if memory serves)
// here we add something new, these will allow us to access the instance values.

-(int) numerator;
-(int) denominator;

@end


//  @implentation section

@implementation Fraction

{
    int numerator;
    int denominator;
}

-(void) print

{
    NSLog(@"%i/%i",numerator,denominator);
}

-(void) setNumerator:(int)n
{
    numerator = n;
}
-(void) setDenominator:(int)d
{
    denominator = d;
}
// Here are the two new instance methods - a simple return of each value. 
-(int) numerator
{
    return numerator;
}
-(int) denominator
{
return denominator;
}

@end

//  Program section






int main(int argc, const char * argv[])
{

    @autoreleasepool {
        Fraction *myFraction = [[Fraction alloc] init];
        // setting the fraction to 1/64...
        [myFraction setNumerator: 1];
        [myFraction setDenominator:64];
        
        // display the fraction:
        
        NSLog(@"The value of myFraction is %i/%i", [myFraction numerator], [myFraction denominator]);
        // note the key difference here, we're extraction the integer values we set via this instance
        // method as opposed to using the print function of the class...
    
    }
    return 0;
}

