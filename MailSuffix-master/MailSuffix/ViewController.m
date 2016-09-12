//
//  ViewController.m
//  MailSuffix
//
//  Created by XL10014 on 15/10/28.
//  Copyright © 2015年 XL10014. All rights reserved.
//

#import "ViewController.h"
#import "XLTextField.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet XLTextField *textField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    /**
     手动frame创建XLTextField
     */
//        XLTextField * Field = [[XLTextField alloc] initWithFrame:CGRectMake(100, 200, 200, 30) fontSize:12];
//        Field.placeholder = @"输入邮箱地址";
//        Field.mailTypeArray = [NSMutableArray arrayWithObjects:@"@qq.com",@"@163.com",@"@126.com",@"@yahoo.com",@"@139.com",@"@henu.com", nil];
//    //    Field.mailMatchColor = [UIColor redColor];
//        Field.didPressedReturnCompletion = ^(UITextField * textField){
//            NSLog(@"textFieldText%@",textField);
//        };
//        [self.view addSubview:Field];
    
    
    /**
     利用xib创建XLTextField
     */
    self.textField.mailTypeArray = [NSMutableArray arrayWithObjects:@"@qq.com",@"@163.com",@"@126.com",@"@yahoo.com",@"@139.com",@"@henu.com", nil];
    self.textField.didPressedReturnCompletion = ^(UITextField * textField){
        NSLog(@"textFieldText%@",textField);
    };
    //    self.textField.mailMatchColor = [UIColor redColor];
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)tapEnd:(id)sender {
    [self.textField resignFirstResponder];
}



@end
