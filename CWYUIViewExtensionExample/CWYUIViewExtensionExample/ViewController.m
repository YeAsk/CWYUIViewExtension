//
//  ViewController.m
//  CWYUIViewExtensionExample
//
//  Created by 蔡文宇 on 16/3/10.
//  Copyright © 2016年 YaAsk. All rights reserved.
//

#import "ViewController.h"
#import "UIView+CWYExtension.h"

@interface ViewController ()
/** testUIView */
@property(nonatomic, weak)UIView *testView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setupView];
}

-(void)setupView{
    
    UIView *testView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    testView.backgroundColor = [UIColor redColor];
    [self.view addSubview:testView];
    self.testView = testView;
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    self.testView.x += 10;
    self.testView.y += 2;
    self.testView.width += 1;
    self.testView.height +=2;
    
    CGFloat screenW = [UIScreen mainScreen].bounds.size.width;
    CGFloat screenH = [UIScreen mainScreen].bounds.size.height;
    
    if (self.testView.x > screenW - self.testView.width) {
        
        self.testView.backgroundColor = [UIColor greenColor];
    }
    
    if (self.testView.x < 0) {
        
        self.testView.backgroundColor = [UIColor redColor];
    }
    
    if (self.testView.x > screenW - self.testView.width) {
        
        self.testView.x = -20;
    }
    
    if (self.testView.y > screenH - self.testView.height) {
        
        self.testView.y = 0;
    }
    


    
    
    
}
@end
