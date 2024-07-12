//
//  NSSet.m
//  FoundationExtension
//
//  Created by Jeong YunWon on 13. 9. 11..
//  Copyright (c) 2013년 youknowone.org. All rights reserved.
//

#import "NSArray.h"

#import "NSSet.h"

NS_ASSUME_NONNULL_BEGIN

@implementation NSSet (Enumerator)

- (instancetype)initWithEnumerator:(id<NSFastEnumeration>)enumerator {
   self = [self initWithArray:[NSArray arrayWithEnumerator:enumerator]];
   return self;
}

@end

NS_ASSUME_NONNULL_END
