// light@huohua.tv
#import "HHTextView.h"
#import "UIView+HHKit.h"

@interface HHTextView ()
@property (strong, nonatomic) UILabel *placeholderLabel;
@end

@implementation HHTextView
- (void)setPlaceholder:(NSString *)placeholder
{
    CGSize textSize = [placeholder sizeWithFont:self.font forWidth:self.frame.size.width lineBreakMode:UILineBreakModeClip];
    if (!self.placeholderLabel) {
        self.placeholderLabel = [[UILabel alloc] init];
    }
    self.placeholderLabel.font = self.font;
    self.placeholderLabel.text = placeholder;
    self.placeholderLabel.textColor = [UIColor grayColor];
    self.placeholderLabel.alpha = 0.7f;
    self.placeholderLabel.backgroundColor = [UIColor clearColor];
    self.placeholderLabel.frame = CGRectMake(8, 8, textSize.width, textSize.height);
    [self addSubview:self.placeholderLabel];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(textViewDidChange:) name:UITextViewTextDidChangeNotification object:nil];
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:UITextViewTextDidChangeNotification object:nil];
}

- (void)setFont:(UIFont *)font
{
    [super setFont:font];
    
    if (self.placeholderLabel) {
        self.placeholderLabel.font = font;
        CGSize textSize = [self.placeholderLabel.text sizeWithFont:self.font forWidth:self.frame.size.width lineBreakMode:UILineBreakModeClip];
        self.placeholderLabel.frame = CGRectMake(8, 8, textSize.width, textSize.height);
    }
}

- (void)setText:(NSString *)text
{
    [super setText:text];
    [[NSNotificationCenter defaultCenter] postNotificationName:UITextViewTextDidChangeNotification object:nil];
}

- (void)textViewDidChange:(UITextView *)textView
{
    NSString *content = [self text];
    
    if ([content length] == 0) {
        self.placeholderLabel.textColor = [UIColor grayColor];
    } else {
        self.placeholderLabel.textColor = [UIColor clearColor];
    }
}

- (void)deleteBackward
{
    [super deleteBackward];
    self.text = self.text;
}
@end