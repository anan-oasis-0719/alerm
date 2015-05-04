//
//  ViewController.m
//  アラート
//
//  Created by onda anan on 2015/04/03.
//  Copyright (c) 2015年 onda anan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    count1=0;//時間
    count2=0;//分
    count3=0;//秒
    
    zikanTextField.delegate = self ;
    hunTextField.delegate = self ;
}

-(IBAction)kasutamu{
    count1=[zikanTextField.text intValue];
    count2=[hunTextField.text intValue];
    count3=0;
    
    zikanLabel.text=zikanTextField.text;
    hunLabel.text=hunTextField.text;
    byouLabel.text=@"0";

    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"お知らせ"
                                                 message:@"タイマーの設定が完了しました。"
                                                delegate:nil
                                       cancelButtonTitle:nil
                                       otherButtonTitles:@"OK", nil
                        ];
    [alert show];
    
    timer=[NSTimer scheduledTimerWithTimeInterval:1
                                           target:self
                                         selector:@selector(up)
                                         userInfo:nil
                                          repeats:YES];
    
}

-(void)up{
    count3=count3-1;
    if (count3==0&&count2==0&&count1==0) {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"安らぎは終わった"
                                                     message:@"ささっと働け"
                                                    delegate:nil
                                           cancelButtonTitle:nil
                                           otherButtonTitles:@"OK", nil
                            ];
        [alert show];
        
        [timer invalidate];}
    
    
    if (count3<=0&&count2!=0) {
        count3=59;
        count2=count2-1;
        }
    
    if (count2<=0&&count2!=0) {
        count2=59;
        count1=count1-1;
    }
    
    if (count1<=0) {
        count1=0;
    }
        zikanLabel.text=[NSString stringWithFormat:@"%d",count1];
        hunLabel.text=[NSString stringWithFormat:@"%d",count2];
        byouLabel.text=[NSString stringWithFormat:@"%d",count3];
    
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    
    [textField resignFirstResponder];
    return YES;
    

}

-(IBAction)kaijo;
{
    if ([timer isValid]) {
        [timer invalidate];
        
        count1=0;//時間
        count2=0;//分
        count3=0;//秒
        
        zikanLabel.text=[NSString stringWithFormat:@"%d",count1];
        hunLabel.text=[NSString stringWithFormat:@"%d",count2];
        byouLabel.text=[NSString stringWithFormat:@"%d",count3];
        
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"お知らせ"
                                                     message:@"解除しました"
                                                    delegate:nil
                                           cancelButtonTitle:nil
                                           otherButtonTitles:@"OK", nil
                                ];
            [alert show];
            
            [timer invalidate];}
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
