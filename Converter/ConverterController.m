#import "ConverterController.h"

@interface ConverterController ()

@property (nonatomic, weak) IBOutlet UILabel *displayLabel;
@property (weak, nonatomic) IBOutlet UILabel *currencyLabel;

@end

@implementation ConverterController {
}

- (void)viewDidLoad {
	[super viewDidLoad];
	self.displayLabel.text = @"0";
}

- (IBAction)buttonTouched:(id)sender {
    
    
    if ( self.displayLabel.text.length >= 10 )
        return;
    
    NSMutableString *appendString = [[NSMutableString alloc] init];
    
    if (self.displayLabel.text != nil)
        [appendString appendString:self.displayLabel.text];
    
    [appendString appendString:[NSString stringWithFormat:@"%ld", [sender tag]]];
    
    self.displayLabel.text = appendString;
    
}


@end
