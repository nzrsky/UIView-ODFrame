//
//  ViewController.m
//  UIVC_ODStatusBar
//
//  Created by Alexey Nazaroff on 24.04.09.
//  Copyright (c) 2009 Alexey Nazaroff. All rights reserved.
//

#import "ViewController.h"
#import "UIView+ODFrame.h"

@interface ViewController () {
    IBOutlet UIButton *_button;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        
    _button.od_origin = (CGPoint){
        roundf((self.view.od_width - _button.od_width)*0.5f),
        roundf((self.view.od_height - _button.od_height)*0.5f)
    };
}

- (IBAction)action:(id)sender {
    [UIView animateWithDuration:0.2 animations:^{
        _button.frame = self.view.bounds;
    }];
}

@end
