@import UIKit;

@protocol HYPWebViewDelegate;

@interface HYPWebView : UIWebView

@property (nonatomic, weak) id <HYPWebViewDelegate> webViewDelegate;

@end

@protocol HYPWebViewDelegate <NSObject>

- (void)webViewDidFinishLoading:(HYPWebView *)webView error:(NSError *)error;

@end
