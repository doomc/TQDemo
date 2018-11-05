//
//  UIBezierPath+TTExt.h
//  TTLightKit
//
//  Created by 天智慧启 on 2017/5/16.
//  Copyright © 2017年 天智慧启. All rights reserved.
//

#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN

@interface UIBezierPath (TTExt)

/**
 Creates and returns a new UIBezierPath object initialized with the text glyphs
 generated from the specified font.
 
 @discussion It doesnot support apple emoji. If you want get emoji image, try
 [UIImage imageWithEmoji:size:] in `UIImage(YYAdd)`.
 
 @param text The text to generate glyph path.
 @param font The font to generate glyph path.
 
 @return A new path object with the text and font, or nil if an error occurs.
 */
+ (UIBezierPath *)tt_bezierPathWithText:(NSString *)text font:(UIFont *)font;

@end

NS_ASSUME_NONNULL_END
