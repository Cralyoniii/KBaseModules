//
//  KBaseModulesTools.m
//  KBaseModules
//
//  Created by kim on 2019/2/4.
//  Copyright © 2019 kim. All rights reserved.
//

#import "KBaseModulesTools.h"

@implementation KBaseModulesTools

+ (UIImage *)k_getModulesBundleImageWithImageName:(NSString *)imageName {
    
    static NSBundle *bundle;
    if (bundle == nil) {
        bundle = [NSBundle bundleWithPath:[[NSBundle bundleForClass:[self class]] pathForResource:@"KBaseModules" ofType:@"bundle"]];
    }
    
    UIImage *image = [UIImage imageNamed:imageName inBundle:bundle compatibleWithTraitCollection:nil];
    if (image == nil) {
        image = [UIImage imageNamed:imageName];
    }
    
    return image;
    
}

@end
