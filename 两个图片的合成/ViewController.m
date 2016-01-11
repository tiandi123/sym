//
//  ViewController.m
//  两个图片的合成
//
//  Created by corepass on 15/12/28.
//  Copyright © 2015年 corepass. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    // Do any additional setup after loading the view, typically from a nib.
    UIImage * image = [UIImage imageNamed:@"one"];
    UIImage * imageOne = [UIImage imageNamed:@"two"];
    UIImageView * imageView = [[UIImageView alloc]init];
    imageView.frame = self.view.frame;
    imageView.backgroundColor = [UIColor greenColor];
    imageView.image = [self addImage:image toImage:imageOne];
    [self.view addSubview:imageView];
}
- (UIImage *)addImage:(UIImage *)image1 toImage:(UIImage *)image2 {
    UIGraphicsBeginImageContext(image1.size);
    
    // Draw image1
    [image1 drawInRect:CGRectMake(0, 0, image1.size.width, image1.size.height)];
    
    // Draw image2
    [image2 drawInRect:CGRectMake(50, 50, image2.size.width, image2.size.height)];
    
    UIImage *resultingImage = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return resultingImage;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
