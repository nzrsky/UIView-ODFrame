//
//  ViewController.m
//  UIVC_ODStatusBar
//
//  Created by Alexey Nazaroff on 24.04.09.
//  Copyright (c) 2009 Alexey Nazaroff. All rights reserved.
//

#import "ViewController.h"
#import "UIView+ODFrame.h"

static CGFloat const kViewAnimationDuration = 0.2f;

@interface ViewController () {
    IBOutlet UIButton *_button;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    srand((uint)time(NULL));
    
    _button.od_origin = (CGPoint){
        avgf(self.view.od_width, _button.od_width),
        avgf(self.view.od_height, _button.od_height)
    };
}

- (IBAction)action:(id)sender {
    [UIView animateWithDuration:kViewAnimationDuration animations:^{
        _button.od_origin = CGPointIntegral((CGPoint){
            rand() % (int)self.view.od_centerX,
            rand() % (int)self.view.od_centerY
        });
        
        NSLog(@"%@", ODPoint(_button.od_origin));
    }];
}

@end
