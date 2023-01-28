//
//  CucumbrishLoader.m
//  testCucumbrishUITests
//
//  Created by Ashish Maurya on 12/11/22.
//

#import <Foundation/Foundation.h>
#import "testCucumbrishUITests-Swift.h"


__attribute__((constructor))

void CucumberishInit(void)
{
    [CucumberishInitializer setupCucumbrish];
}
