//
//  MYSlideBarViewCell.m
//  MYSlideViewController
//
//  Created by Michael on 2017/6/26.
//  Copyright © 2017年 Michael. All rights reserved.
//

#import "MYSlideBarViewCell.h"
#import <Masonry.h>

#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;

@implementation MYSlideBarViewCell

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI {
    WS(weakSelf)
    [self.textLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.equalTo(weakSelf.contentView);
    }];
}

- (UILabel *)textLabel {
    if (!_textLabel) {
        _textLabel = [[UILabel alloc] init];
        _textLabel.textAlignment = NSTextAlignmentCenter;
        _textLabel.font = [UIFont systemFontOfSize:17.0];
        _textLabel.textColor = [UIColor blackColor];
        [self.contentView addSubview:_textLabel];
    }
    return _textLabel;
}

@end
