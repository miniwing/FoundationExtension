//
//  NSAttributedString+Cocoa.m
//  FoundationExtension
//
//  Created by Jeong YunWon on 12. 10. 31..
//  Copyright (c) 2012 youknowone.org. All rights reserved.
//

#import <cdebug/debug.h>
#import "NSAttributedString+Cocoa.h"

static NSArray *__NSWritingDirectionAttributeArrayFromAttributes(NSWritingDirectionAttributes writingDirection) {
    NSMutableArray *array = [NSMutableArray array];
    if (writingDirection & NSWritingDirectionAttributeLRE) {
        const NSWritingDirectionAttributes LRE = NSWritingDirectionLeftToRight | NSTextWritingDirectionEmbedding;
        dassert(LRE == 0);
        [array addObject:@(LRE)];
    }
    if (writingDirection & NSWritingDirectionAttributeRLE) {
        const NSWritingDirectionAttributes RLE = NSWritingDirectionRightToLeft | NSTextWritingDirectionEmbedding;
        dassert(RLE == 1);
        [array addObject:@(RLE)];
    }
    if (writingDirection & NSWritingDirectionAttributeLRO) {
        const NSWritingDirectionAttributes LRO = NSWritingDirectionLeftToRight | NSTextWritingDirectionOverride;
        dassert(LRO == 2);
        [array addObject:@(LRO)];
    }
    if (writingDirection & NSWritingDirectionAttributeRLO) {
        const NSWritingDirectionAttributes RLO = NSWritingDirectionRightToLeft | NSTextWritingDirectionOverride;
        dassert(RLO == 3);
        [array addObject:@(RLO)];
    }
    return array;
}

@implementation NSMutableAttributedString (AttributeProperties)

- (void)addAttributeWritingDirectionArray:(NSArray *)writingDirectionArray range:(NSRange)range {
    [self addAttribute:NSWritingDirectionAttributeName value:writingDirectionArray range:range];
}

- (void)addAttributeWritingDirection:(NSWritingDirectionAttributes)writingDirection range:(NSRange)range {
    [self addAttribute:NSWritingDirectionAttributeName value:__NSWritingDirectionAttributeArrayFromAttributes(writingDirection) range:range];
}

- (void)removeAttributeWritingDirectionFromRange:(NSRange)range {
    [self removeAttribute:NSWritingDirectionAttributeName range:range];
}

//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeFont:(NSFont *)font range:(NSRange)range { [self addAttribute:NSFontAttributeName value:font range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeFontFromRange:(NSRange)range { [self removeAttribute:NSFontAttributeName range:range]; }


//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeParagraphStyle:(NSParagraphStyle *)paragraphStyle range:(NSRange)range { [self addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeParagraphStyleFromRange:(NSRange)range { [self removeAttribute:NSParagraphStyleAttributeName range:range]; }


//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeForegroundColor:(NSColor *)foregroundColor range:(NSRange)range { [self addAttribute:NSForegroundColorAttributeName value:foregroundColor range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeForegroundColorFromRange:(NSRange)range { [self removeAttribute:NSForegroundColorAttributeName range:range]; }


//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeUnderlineStyle:(NSUnderlineStyle)underlineStyle range:(NSRange)range { [self addAttribute:NSUnderlineStyleAttributeName value:[NSNumber numberWithUnsignedInteger:underlineStyle] range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeUnderlineStyleFromRange:(NSRange)range { [self removeAttribute:NSUnderlineStyleAttributeName range:range]; }


//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeSuperscript:(BOOL)superscript range:(NSRange)range { [self addAttribute:NSSuperscriptAttributeName value:@(superscript) range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeSuperscriptFromRange:(NSRange)range { [self removeAttribute:NSSuperscriptAttributeName range:range]; }


//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeBackgroundColor:(NSColor *)backgroundColor range:(NSRange)range { [self addAttribute:NSBackgroundColorAttributeName value:backgroundColor range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeBackgroundColorFromRange:(NSRange)range { [self removeAttribute:NSBackgroundColorAttributeName range:range]; }


//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeAttachment:(NSTextAttachment *)attachment range:(NSRange)range { [self addAttribute:NSAttachmentAttributeName value:attachment range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeAttachmentFromRange:(NSRange)range { [self removeAttribute:NSAttachmentAttributeName range:range]; }


//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeLigature:(NSLigatureType)ligature range:(NSRange)range { [self addAttribute:NSLigatureAttributeName value:@(ligature) range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeLigatureFromRange:(NSRange)range { [self removeAttribute:NSLigatureAttributeName range:range]; }


//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeBaselineOffset:(float)baselineOffset range:(NSRange)range { [self addAttribute:NSBaselineOffsetAttributeName value:@(baselineOffset) range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeBaselineOffsetFromRange:(NSRange)range { [self removeAttribute:NSBaselineOffsetAttributeName range:range]; }


//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeKern:(float)kern range:(NSRange)range { [self addAttribute:NSKernAttributeName value:@(kern) range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeKernFromRange:(NSRange)range { [self removeAttribute:NSKernAttributeName range:range]; }


//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeLink:(NSURL *)link range:(NSRange)range { [self addAttribute:NSLinkAttributeName value:link range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeLinkFromRange:(NSRange)range { [self removeAttribute:NSLinkAttributeName range:range]; }


//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeStrokeWidth:(float)strokeWidth range:(NSRange)range { [self addAttribute:NSStrokeWidthAttributeName value:@(strokeWidth) range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeStrokeWidthFromRange:(NSRange)range { [self removeAttribute:NSStrokeWidthAttributeName range:range]; }


//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeStrokeColor:(NSColor *)strokeColor range:(NSRange)range { [self addAttribute:NSStrokeColorAttributeName value:strokeColor range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeStrokeColorFromRange:(NSRange)range { [self removeAttribute:NSStrokeColorAttributeName range:range]; }


//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeUnderlineColor:(NSColor *)underlineColor range:(NSRange)range { [self addAttribute:NSUnderlineColorAttributeName value:underlineColor range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeUnderlineColorFromRange:(NSRange)range { [self removeAttribute:NSUnderlineColorAttributeName range:range]; }


//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeStrikethroughStyle:(NSUnderlineStyle)strikethroughStyle range:(NSRange)range { [self addAttribute:NSStrikethroughStyleAttributeName value:[NSNumber numberWithUnsignedInteger:strikethroughStyle] range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeStrikethroughStyleFromRange:(NSRange)range { [self removeAttribute:NSStrikethroughStyleAttributeName range:range]; }


//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeStrikethroughColor:(NSColor *)strikethroughColor range:(NSRange)range { [self addAttribute:NSStrikethroughColorAttributeName value:strikethroughColor range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeStrikethroughColorFromRange:(NSRange)range { [self removeAttribute:NSStrikethroughColorAttributeName range:range]; }


//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeShadow:(NSShadow *)shadow range:(NSRange)range { [self addAttribute:NSShadowAttributeName value:shadow range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeShadowFromRange:(NSRange)range { [self removeAttribute:NSShadowAttributeName range:range]; }


//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeObliqueness:(float)obliqueness range:(NSRange)range { [self addAttribute:NSObliquenessAttributeName value:@(obliqueness) range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeObliquenessFromRange:(NSRange)range { [self removeAttribute:NSObliquenessAttributeName range:range]; }


//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeExpansion:(float)expansion range:(NSRange)range { [self addAttribute:NSExpansionAttributeName value:@(expansion) range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeExpansionFromRange:(NSRange)range { [self removeAttribute:NSExpansionAttributeName range:range]; }


//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeCursor:(NSCursor *)cursor range:(NSRange)range { [self addAttribute:NSCursorAttributeName value:cursor range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeCursorFromRange:(NSRange)range { [self removeAttribute:NSCursorAttributeName range:range]; }


//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeToolTip:(NSString *)toolTip range:(NSRange)range { [self addAttribute:NSToolTipAttributeName value:toolTip range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeToolTipFromRange:(NSRange)range { [self removeAttribute:NSToolTipAttributeName range:range]; }

#if __MAC_OS_X_VERSION_MIN_REQUIRED >= 1050
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeMarkedClauseSegment:(NSInteger)markedClauseSegment range:(NSRange)range { [self addAttribute:NSMarkedClauseSegmentAttributeName value:@(markedClauseSegment) range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeMarkedClauseSegmentFromRange:(NSRange)range { [self removeAttribute:NSMarkedClauseSegmentAttributeName range:range]; }
#endif
#if __MAC_OS_X_VERSION_MIN_REQUIRED >= 1070
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeVerticalGlyphForm:(NSVerticalGlyphForm)verticalGlyphForm range:(NSRange)range { [self addAttribute:NSVerticalGlyphFormAttributeName value:@(verticalGlyphForm) range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeVerticalGlyphFormFromRange:(NSRange)range { [self removeAttribute:NSVerticalGlyphFormAttributeName range:range]; }
#endif
#if __MAC_OS_X_VERSION_MIN_REQUIRED >= 1080
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)addAttributeTextAlternatives:(NSTextAlternatives *)textAlternatives range:(NSRange)range { [self addAttribute:NSTextAlternativesAttributeName value:textAlternatives range:range]; }
//! Generated by NSAttributedStringCategoryImplementation.py
- (void)removeAttributeTextAlternativesFromRange:(NSRange)range { [self removeAttribute:NSTextAlternativesAttributeName range:range]; }
#endif
@end


@implementation NSAttributedStringAttributeDictionary

- (void)setObject:(id)anObject forKey:(id<NSCopying>)aKey {
    if (anObject == nil) {
        [super removeObjectForKey:aKey];
    } else {
        [super setObject:anObject forKey:aKey];
    }
}


- (NSLigatureType)ligature {
    return self.ligatureNumber ? [self.ligatureNumber unsignedIntegerValue] : NSLigatureStandard;
}

- (void)setLigature:(NSLigatureType)ligature {
    self.ligatureNumber = @(ligature);
}

- (NSArray *)writingDirectionArray {
    return self[NSWritingDirectionAttributeName];
}

- (void)setWritingDirectionArray:(NSArray *)writingDirectionArray {
    self[NSWritingDirectionAttributeName] = writingDirectionArray;
}

- (NSWritingDirectionAttributes)writingDirection {
    NSArray *array = self.writingDirectionArray;
    NSWritingDirectionAttributes attr = 0;
    for (NSNumber *value in array) {
        attr |= 1 << [value unsignedIntegerValue];
    }
    return attr;
}

-(void)setWritingDirection:(NSWritingDirectionAttributes)writingDirection {
    self.writingDirectionArray = __NSWritingDirectionAttributeArrayFromAttributes(writingDirection);
}



//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSFont *)font { return self[NSFontAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setFont:(NSFont *)font { self[NSFontAttributeName] = font; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSParagraphStyle *)paragraphStyle { return self[NSParagraphStyleAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setParagraphStyle:(NSParagraphStyle *)paragraphStyle { self[NSParagraphStyleAttributeName] = paragraphStyle; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSColor *)foregroundColor { return self[NSForegroundColorAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setForegroundColor:(NSColor *)foregroundColor { self[NSForegroundColorAttributeName] = foregroundColor; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSNumber *)underlineStyleNumber { return self[NSUnderlineStyleAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setUnderlineStyleNumber:(NSNumber *)underlineStyleNumber { self[NSUnderlineStyleAttributeName] = underlineStyleNumber; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSUnderlineStyle)underlineStyle { return [self.underlineStyleNumber unsignedIntegerValue]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setUnderlineStyle:(NSUnderlineStyle)underlineStyle { self.underlineStyleNumber = [NSNumber numberWithUnsignedInteger:underlineStyle]; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSNumber *)superscriptNumber { return self[NSSuperscriptAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setSuperscriptNumber:(NSNumber *)superscriptNumber { self[NSSuperscriptAttributeName] = superscriptNumber; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (BOOL)superscript { return [self.superscriptNumber boolValue]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setSuperscript:(BOOL)superscript { self.superscriptNumber = @(superscript); }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSColor *)backgroundColor { return self[NSBackgroundColorAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setBackgroundColor:(NSColor *)backgroundColor { self[NSBackgroundColorAttributeName] = backgroundColor; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSTextAttachment *)attachment { return self[NSAttachmentAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setAttachment:(NSTextAttachment *)attachment { self[NSAttachmentAttributeName] = attachment; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSNumber *)ligatureNumber { return self[NSLigatureAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setLigatureNumber:(NSNumber *)ligatureNumber { self[NSLigatureAttributeName] = ligatureNumber; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSNumber *)baselineOffsetNumber { return self[NSBaselineOffsetAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setBaselineOffsetNumber:(NSNumber *)baselineOffsetNumber { self[NSBaselineOffsetAttributeName] = baselineOffsetNumber; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (float)baselineOffset { return [self.baselineOffsetNumber floatValue]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setBaselineOffset:(float)baselineOffset { self.baselineOffsetNumber = @(baselineOffset); }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSNumber *)kernNumber { return self[NSKernAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setKernNumber:(NSNumber *)kernNumber { self[NSKernAttributeName] = kernNumber; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (float)kern { return [self.kernNumber floatValue]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setKern:(float)kern { self.kernNumber = @(kern); }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSURL *)link { return self[NSLinkAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setLink:(NSURL *)link { self[NSLinkAttributeName] = link; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSNumber *)strokeWidthNumber { return self[NSStrokeWidthAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setStrokeWidthNumber:(NSNumber *)strokeWidthNumber { self[NSStrokeWidthAttributeName] = strokeWidthNumber; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (float)strokeWidth { return [self.strokeWidthNumber floatValue]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setStrokeWidth:(float)strokeWidth { self.strokeWidthNumber = @(strokeWidth); }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSColor *)strokeColor { return self[NSStrokeColorAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setStrokeColor:(NSColor *)strokeColor { self[NSStrokeColorAttributeName] = strokeColor; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSColor *)underlineColor { return self[NSUnderlineColorAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setUnderlineColor:(NSColor *)underlineColor { self[NSUnderlineColorAttributeName] = underlineColor; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSNumber *)strikethroughStyleNumber { return self[NSStrikethroughStyleAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setStrikethroughStyleNumber:(NSNumber *)strikethroughStyleNumber { self[NSStrikethroughStyleAttributeName] = strikethroughStyleNumber; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSUnderlineStyle)strikethroughStyle { return [self.strikethroughStyleNumber unsignedIntegerValue]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setStrikethroughStyle:(NSUnderlineStyle)strikethroughStyle { self.strikethroughStyleNumber = [NSNumber numberWithUnsignedInteger:strikethroughStyle]; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSColor *)strikethroughColor { return self[NSStrikethroughColorAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setStrikethroughColor:(NSColor *)strikethroughColor { self[NSStrikethroughColorAttributeName] = strikethroughColor; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSShadow *)shadow { return self[NSShadowAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setShadow:(NSShadow *)shadow { self[NSShadowAttributeName] = shadow; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSNumber *)obliquenessNumber { return self[NSObliquenessAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setObliquenessNumber:(NSNumber *)obliquenessNumber { self[NSObliquenessAttributeName] = obliquenessNumber; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (float)obliqueness { return [self.obliquenessNumber floatValue]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setObliqueness:(float)obliqueness { self.obliquenessNumber = @(obliqueness); }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSNumber *)expansionNumber { return self[NSExpansionAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setExpansionNumber:(NSNumber *)expansionNumber { self[NSExpansionAttributeName] = expansionNumber; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (float)expansion { return [self.expansionNumber floatValue]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setExpansion:(float)expansion { self.expansionNumber = @(expansion); }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSCursor *)cursor { return self[NSCursorAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setCursor:(NSCursor *)cursor { self[NSCursorAttributeName] = cursor; }

//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSString *)toolTip { return self[NSToolTipAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setToolTip:(NSString *)toolTip { self[NSToolTipAttributeName] = toolTip; }

#if __MAC_OS_X_VERSION_MIN_REQUIRED >= 1050
//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSNumber *)markedClauseSegmentNumber { return self[NSMarkedClauseSegmentAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setMarkedClauseSegmentNumber:(NSNumber *)markedClauseSegmentNumber { self[NSMarkedClauseSegmentAttributeName] = markedClauseSegmentNumber; }
#endif
#if __MAC_OS_X_VERSION_MIN_REQUIRED >= 1050
//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSInteger)markedClauseSegment { return [self.markedClauseSegmentNumber integerValue]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setMarkedClauseSegment:(NSInteger)markedClauseSegment { self.markedClauseSegmentNumber = @(markedClauseSegment); }
#endif
#if __MAC_OS_X_VERSION_MIN_REQUIRED >= 1070
//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSNumber *)verticalGlyphFormNumber { return self[NSVerticalGlyphFormAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setVerticalGlyphFormNumber:(NSNumber *)verticalGlyphFormNumber { self[NSVerticalGlyphFormAttributeName] = verticalGlyphFormNumber; }
#endif
#if __MAC_OS_X_VERSION_MIN_REQUIRED >= 1070
//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSVerticalGlyphForm)verticalGlyphForm { return [self.verticalGlyphFormNumber unsignedIntegerValue]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setVerticalGlyphForm:(NSVerticalGlyphForm)verticalGlyphForm { self.verticalGlyphFormNumber = @(verticalGlyphForm); }
#endif
#if __MAC_OS_X_VERSION_MIN_REQUIRED >= 1080
//! Generated by NSAttributedStringDictionaryImplementation.py
- (NSTextAlternatives *)textAlternatives { return self[NSTextAlternativesAttributeName]; }
//! Generated by NSAttributedStringDictionaryImplementation.py
- (void)setTextAlternatives:(NSTextAlternatives *)textAlternatives { self[NSTextAlternativesAttributeName] = textAlternatives; }
#endif
@end

