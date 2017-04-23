//
//  CYLabel.m
//  LabelDemo
//
//  Created by Chen Yiliang on 4/21/17.
//  Copyright © 2017  Chen Yiliang. All rights reserved.
//

#import "CYLabel.h"

@implementation CYLabel

- (CGFloat)cornerRadius {
    return self.layer.cornerRadius;
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
    self.layer.cornerRadius = cornerRadius;
}

#pragma mark - Init

- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    self = [super initWithCoder:aDecoder];
    if (self != nil) {
        [self commonInit];
    }
    
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self != nil) {
        [self commonInit];
    }
    
    return self;
}

- (void)commonInit {
    self.clipsToBounds = YES;
    self.textAlignment = NSTextAlignmentCenter;
}

- (void)setText:(NSString *)text {
    [super setText:text];
    [self sizeToFit];
}

- (CGRect)textRectForBounds:(CGRect)bounds limitedToNumberOfLines:(NSInteger)numberOfLines {
    CGFloat border = self.layer.borderWidth;
    CGRect rect = [super textRectForBounds:CGRectInset(bounds, border, border) limitedToNumberOfLines:numberOfLines];
    rect.size.width += self.marginInserts.left + self.marginInserts.right;
    rect.size.height += self.marginInserts.top + self.marginInserts.bottom;
    return rect;
}

- (void)drawTextInRect:(CGRect)rect {
    CGFloat border = self.layer.borderWidth;
    rect = CGRectInset(rect, border, border);
    rect.origin.x += self.marginInserts.left;
    rect.size.width -= self.marginInserts.left + self.marginInserts.right;
    [super drawTextInRect:rect];
}

#pragma mark -

+ (CGFloat)heightWithFont:(UIFont *)font marginInserts:(UIEdgeInsets)marginInserts {
    CGRect rect =  [@"cylabel" boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, CGFLOAT_MAX) options:0 attributes:@{NSFontAttributeName: font} context:NULL];
    CGFloat height = rect.size.height + marginInserts.top + marginInserts.bottom;
    return height;
}

@end