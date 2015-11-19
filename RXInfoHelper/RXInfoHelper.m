//
//  RXInfoHelper.m
//  RXInfoHelperExample
//
//  Created by Rush.D.Xzj on 15/11/19.
//  Copyright © 2015年 Rush.D.Xzj. All rights reserved.
//

#import "RXInfoHelper.h"

@implementation RXInfoHelper






#pragma mark - URLScheme From Plist
+ (NSString *)stringURLSchemeWithKeyword:(NSString *)keyworkd
{
    NSArray *ary = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleURLTypes"];
    for (NSDictionary *dic in ary) {
        NSString *urlName = [dic objectForKey:@"CFBundleURLName"];
        if ([urlName isEqualToString:keyworkd]) {
            NSArray *schemes = [dic objectForKey:@"CFBundleURLSchemes"];
            for (NSString *scheme in schemes) {
                if (scheme.length > 0) {
                    return scheme;
                }
            }
        }
    }
    return @"";
}

#pragma mark - URL Types
+ (NSString *)stringTenPaySourceApplication
{
    return @"com.tenpay.mobile.iphone";
}
+ (NSString *)stringAlixPaySourceApplication
{
    return @"com.alipay.safepayclient";
}
+ (NSString *)stringAlixPaySourceApplication2
{
    return @"com.alipay.iphoneclient";
}
+ (NSString *)stringTenURLScheme
{
    return [self stringURLSchemeWithKeyword:@"ten"];
}
+ (NSString *)stringAlixURLScheme
{
    return [self stringURLSchemeWithKeyword:@"alix"];
}
+ (NSString *)stringTencentURLScheme
{
    return [self stringURLSchemeWithKeyword:@"tencent"];
}
+ (NSString *)stringWeiXinURLScheme
{
    return [self stringURLSchemeWithKeyword:@"weixin"];
}
+ (NSString *)stringSinaURLScheme
{
    return [self stringURLSchemeWithKeyword:@"sina"];
}


#pragma mark - info.plist

+ (void)testInfoPlist
{
    // https://developer.apple.com/library/mac/documentation/General/Reference/InfoPlistKeyReference/Introduction/Introduction.html#//apple_ref/doc/uid/TP40009248-SW1
    // info.plist key introduction
    NSDictionary *plistDic = [[NSBundle mainBundle] infoDictionary];
    NSLog(@"plistDic:%@", plistDic);
}


+ (NSString *)appVersion
{
    NSDictionary *plistDic = [[NSBundle mainBundle] infoDictionary];
    NSString *result = plistDic[@"CFBundleShortVersionString"];
    return result;
}
+ (NSString *)appBuild
{
    NSDictionary *plistDic = [[NSBundle mainBundle] infoDictionary];
    NSString *result = plistDic[@"CFBundleVersion"];
    return result;
}

+ (NSString *)appBundleIdentifier
{
    NSDictionary *plistDic = [[NSBundle mainBundle] infoDictionary];
    NSString *result = plistDic[@"CFBundleIdentifier"];
    return result;
}

+ (NSString *)appBundleName
{
    NSDictionary *plistDic = [[NSBundle mainBundle] infoDictionary];
    NSString *result = plistDic[@"CFBundleName"];
    return result;
}

+ (id)valueWithKey:(NSString *)key
{
    NSDictionary *plistDic = [[NSBundle mainBundle] infoDictionary];
    id result = plistDic[key];
    return result;
}




@end
