#import <Foundation/Foundation.h>
#import <WebKit/WebKit.h>

@interface ADPGameSDK : NSObject

- (void)initWithWebView:(WKWebView *)webView posId:(NSString *)posId;
- (void)setBannerId:(NSString *)bannerPosId;
- (void)setInterstitialId:(NSString *)interstitialPosId;
- (void)setRewardId:(NSString *)rewardPosId;
- (void)destroy;
//根据业务逻辑如开通会员后广告就不展示，游戏流程中直接回调已经展示广告。
//跳过插页
- (void)setBypassInterstitial:(BOOL)bypassInterstitial;
//跳过激励
- (void)setBypassReward:(BOOL)bypassReward;

@end
