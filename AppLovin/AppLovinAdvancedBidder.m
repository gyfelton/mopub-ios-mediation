//
//  AppLovinAdvancedBidder.m
//
//
//  Created by Thomas So on 5/22/18.
//
//

#import "AppLovinAdvancedBidder.h"

#if __has_include(<AppLovinSDK/AppLovinSDK.h>)
    #import <AppLovinSDK/AppLovinSDK.h>
#else
    #import "ALSdk.h"
#endif

@implementation AppLovinAdvancedBidder

- (NSString *)creativeNetworkName
{
    return @"applovin_sdk";
}

- (NSString *)token
{
    // Check if the SDK key is present in info.plist. If it's not present, do not attempt
    // to fetch the token since this will cause the app to crash!
    if ([[NSBundle mainBundle] objectForInfoDictionaryKey:@"AppLovinSdkKey"] == nil) {
        return nil;
    }
    
    return [ALSdk shared].adService.bidToken;
}

@end