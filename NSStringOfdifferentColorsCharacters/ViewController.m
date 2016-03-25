//
//  ViewController.m
//  NSStringOfdifferentColorsCharacters
//
//  Created by 杨杰 on 16/3/25.
//  Copyright © 2016年 JY. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 300, 200)];
    NSString *contentStr = @"简介:Hello,World";
    label.attributedText = [self mutableNSStringList:contentStr,@"Hello",@"World",nil];
    [self.view addSubview:label];
    
}

- (NSMutableAttributedString *)mutableNSStringList:(NSString *)fistPara, ...
{
   NSMutableAttributedString *str = [[NSMutableAttributedString alloc]initWithString:fistPara];
    va_list arguments;
    id eachObject;
    if (fistPara) {
//        NSLog(@"%@",fistPara);
        va_start(arguments, fistPara);
        
        while ((eachObject = va_arg(arguments, id))) {
//            NSLog(@"%@",eachObject);
            if (range.location != NSNotFound) {
                [str addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:range];
            }
        }
        va_end(arguments);
    }
    
    return str;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
