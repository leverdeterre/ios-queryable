//
//  fastEnumerationTests.m
//  ios-queryable
//
//  Created by Marty on 2012-12-01.
//  Copyright (c) 2012 Marty. All rights reserved.
//

#import "fastEnumerationTests.h"

@implementation fastEnumerationTests

-(void) test_fast_enumeration_returns_correct_records
{
    NSManagedObjectContext* context = [self getContext];
    IQueryable* queryable = [context ofType:@"Product"];
    
    uint counter = 0;
    for(Product* product in queryable)
    {
        ++counter;
    }
    
    STAssertEquals(self.testProductData.count, counter, @"Expected the total number of products");
}

@end
