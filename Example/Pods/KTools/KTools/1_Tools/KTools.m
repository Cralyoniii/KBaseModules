//
//  KTools.m
//  KTools
//
//  Created by kim on 2019/2/4.
//  Copyright © 2019 kim. All rights reserved.
//

#import "KTools.h"

@implementation KTools

+ (UIImage *)k_getToolsBundleImageWithImageName:(NSString *)imageName {
    static NSBundle *bundle;
    if (bundle == nil) {
        bundle = [NSBundle bundleWithPath:[[NSBundle bundleForClass:[self class]] pathForResource:@"KTools" ofType:@"bundle"]];
    }
    
    UIImage *image = [UIImage imageNamed:imageName inBundle:bundle compatibleWithTraitCollection:nil];
    if (image == nil) {
        image = [UIImage imageNamed:imageName];
    }
    
    return image;
}

@end
