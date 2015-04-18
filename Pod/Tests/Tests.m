@import UIKit;
@import XCTest;

#import "HYPWebView.h"

@interface Tests : XCTestCase

@end

@implementation Tests

- (void)testInitialization
{
    HYPWebView *webView = [HYPWebView new];
    XCTAssertNotNil(webView);
}

@end
