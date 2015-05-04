//
//  ViewController.h
//  アラート
//
//  Created by onda anan on 2015/04/03.
//  Copyright (c) 2015年 onda anan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>

{
    int count1;//時間
    int count2;//分
    int count3;//秒
    
    IBOutlet UILabel *zikanLabel;
    IBOutlet UILabel *hunLabel;
    IBOutlet UILabel *byouLabel;
    
    IBOutlet UITextField *zikanTextField;
    IBOutlet UITextField *hunTextField;
    
    NSTimer *timer;
}

-(IBAction)kasutamu;
-(IBAction)kaijo;

-(void)up;

@end

