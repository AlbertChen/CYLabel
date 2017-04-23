//
//  CYLabel.h
//  LabelDemo
//
//  Created by Chen Yiliang on 4/21/17.
//  Copyright © 2017  Chen Yiliang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CYLabel : UILabel

@property (nonatomic, assign) CGFloat cornerRadius;

@property (nonatomic, assign) UIEdgeInsets marginInserts;

+ (CGFloat)heightWithFont:(UIFont *)font marginInserts:(UIEdgeInsets)marginInserts;

@end