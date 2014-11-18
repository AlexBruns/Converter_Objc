//
//  ConverterControllerTest.m
//  Converter
//
//  Created by Bruns, Alexander (415) on 18/11/14.
//  Copyright (c) 2014 it-agile GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>
#import "ConverterController.h"

#define HC_SHORTHAND
#import "OCHamcrest/OCHamcrest.h"

@interface ConverterController (Testing)
@property (nonatomic, weak) IBOutlet UILabel *displayLabel;
- (IBAction)buttonTouched:(id)sender;
@end

@interface ConverterControllerTest : XCTestCase

@end

@implementation ConverterControllerTest
{

    ConverterController *controller;
    UILabel *displayLabel;

}


- (UIButton *)buttonWithTag:(NSInteger)tag
{
    UIButton *button = [[UIButton alloc] init];
    button.tag = tag;
    return button;

}


-(void) testZahlDesButtonsErscheintImDisplay
{
    [controller buttonTouched:[self buttonWithTag:1]];
    assertThat(displayLabel.text, is(@"1"));
    
}

-(void) testZahlenWerdenAngehaengt
{
    [controller buttonTouched:[self buttonWithTag:1]];
    [controller buttonTouched:[self buttonWithTag:2]];
    [controller buttonTouched:[self buttonWithTag:3]];
    [controller buttonTouched:[self buttonWithTag:4]];
    
    
    
    
    assertThat(displayLabel.text, is(@"1234"));
}

- (void) testZahlenLaengerAlsZehnZiffernWerdenBegrenzt
{

    [controller buttonTouched:[self buttonWithTag:1]];
    [controller buttonTouched:[self buttonWithTag:2]];
    [controller buttonTouched:[self buttonWithTag:3]];
    [controller buttonTouched:[self buttonWithTag:4]];
    [controller buttonTouched:[self buttonWithTag:1]];
    [controller buttonTouched:[self buttonWithTag:2]];
    [controller buttonTouched:[self buttonWithTag:3]];
    [controller buttonTouched:[self buttonWithTag:4]];
    [controller buttonTouched:[self buttonWithTag:1]];
    [controller buttonTouched:[self buttonWithTag:2]];
    [controller buttonTouched:[self buttonWithTag:3]];
    [controller buttonTouched:[self buttonWithTag:4]];
    
    assertThat(displayLabel.text, is(@"1234123412"));

}


- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    controller = [[ConverterController alloc] init];
    displayLabel = [[UILabel alloc] init];
    controller.displayLabel = displayLabel;
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
