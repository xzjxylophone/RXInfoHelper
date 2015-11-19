//
//  RXInfoHelper.h
//  RXInfoHelperExample
//
//  Created by Rush.D.Xzj on 15/11/19.
//  Copyright © 2015年 Rush.D.Xzj. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RXInfoHelper : NSObject

#pragma mark - URL Types
+ (NSString *)stringTenPaySourceApplication;
+ (NSString *)stringAlixPaySourceApplication;
+ (NSString *)stringAlixPaySourceApplication2;
+ (NSString *)stringTenURLScheme;
+ (NSString *)stringAlixURLScheme;
+ (NSString *)stringTencentURLScheme;
+ (NSString *)stringWeiXinURLScheme;
+ (NSString *)stringSinaURLScheme;

#pragma mark - info.plist
+ (void)testInfoPlist;

+ (NSString *)appVersion;
+ (NSString *)appBuild;
+ (NSString *)appBundleIdentifier;
+ (NSString *)appBundleName;


+ (id)valueWithKey:(NSString *)key;



@end
