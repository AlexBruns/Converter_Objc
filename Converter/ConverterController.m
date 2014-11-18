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
    
    
    self.displayLabel.text = [NSString stringWithFormat:@"%ld", [sender tag]];
    
}


@end
