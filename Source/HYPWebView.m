#import "HYPWebView.h"
#import "SVProgressHUD.h"

@interface HYPWebView () <UIWebViewDelegate>

@end

@implementation HYPWebView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.delegate = self;
    }
    return self;
}

#pragma mark - UIWebViewDelegate

- (void)webViewDidStartLoad:(UIWebView *)webView {
    [SVProgressHUD show];
}

- (void)webViewDidFinishLoad:(UIWebView *)webView {
    [SVProgressHUD dismiss];

    if ([self.webViewDelegate respondsToSelector:@selector(webViewDidFinishLoading:error:)]) {
        [self.webViewDelegate webViewDidFinishLoading:self error:nil];
    }
}

- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
    [SVProgressHUD showErrorWithStatus:[error description]];

    if ([self.webViewDelegate respondsToSelector:@selector(webViewDidFinishLoading:error:)]) {
        [self.webViewDelegate webViewDidFinishLoading:self error:error];
    }
}

@end
