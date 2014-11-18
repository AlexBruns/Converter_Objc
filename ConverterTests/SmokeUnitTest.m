#import <UIKit/UIKit.h>
#import <XCTest/XCTest.h>

#define HC_SHORTHAND
#import "OCHamcrest/OCHamcrest.h"

@interface SmokeUnitTest : XCTestCase

@end

@implementation SmokeUnitTest

- (void)testItShouldSmoke
{
    
    NSString *foo = @"foo";
    NSString *upper = [foo uppercaseString];
    NSString *bar = @"bar";
    NSString *foobar = @"foobar";
    
    
    NSArray *array = @[foo, bar, foobar];
    
    XCTAssert(array.count > 0);
    XCTAssert([array containsObject:foo]);
    //XCTAssertEqualObjects(upper, @"FOO");
    
	//XCTAssertFalse(FALSE);
    
    assertThat(array, hasItem(foobar));
}
@end
