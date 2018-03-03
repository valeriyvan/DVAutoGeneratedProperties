//
//  DVAutoSynthesizedProperties.m
//  DVAutoGeneratedProperties_Tests
//
//  Created by Vladislav Dugnist on 04/03/2018.
//  Copyright © 2018 vdugnist. All rights reserved.
//

#import "DVAutoSynthesizedProperties.h"
#import "DVAutoGeneratedPropertiesHelpers.h"

@implementation DVAutoSynthesizedProperties

+ (dvClassPropertySetterBlock)setterBlockForGetterSelector:(SEL)getterSelector {
    objc_property_t property = classPropertyForSelector(self, getterSelector);
    objc_AssociationPolicy policy = associationPolicyForProperty(property);
    
    return ^(id blockSelf, id value){
        objc_setAssociatedObject(blockSelf, getterSelector, value, policy);
    };
}

+ (dvClassPropertyGetterBlock)getterBlockForSelector:(SEL)getterSelector {
    return ^id(id blockSelf) {
        return objc_getAssociatedObject(blockSelf, getterSelector);
    };
}

objc_AssociationPolicy associationPolicyForProperty(objc_property_t property) {
    const char *attributes = property_getAttributes(property);
    NSArray <NSString *> *attributesArray = [[NSString stringWithUTF8String:attributes] componentsSeparatedByString:@","];
    
    // copy
    if ([attributesArray containsObject:@"C"]) {
        if ([attributesArray containsObject:@"N"]) {
            return OBJC_ASSOCIATION_COPY_NONATOMIC;
        } else {
            return OBJC_ASSOCIATION_COPY;
        }
    }
    
    // retain
    if ([attributesArray containsObject:@"&"]) {
        if ([attributesArray containsObject:@"N"]) {
            return OBJC_ASSOCIATION_RETAIN_NONATOMIC;
        } else {
            return OBJC_ASSOCIATION_RETAIN;
        }
    }
    
    return OBJC_ASSOCIATION_ASSIGN;
}

@end
