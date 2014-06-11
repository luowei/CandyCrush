//
//  Game.m
//  CandyCrush
//
//  Created by luowei on 14-6-11.
//  Copyright (c) 2014年 rootls. All rights reserved.
//

#import "Game.h"

int candy1Type;
int candy2Type;
int candy3Type;
int candy4Type;
int candy5Type;
int candy6Type;
int candy7Type;
int candy8Type;
int candy9Type;
int candy10Type;
int candy11Type;
int candy12Type;
int candy13Type;
int candy14Type;
int candy15Type;
int candy16Type;

int firstCandyPushed;
int firstCandyTypePushed;
int secondCandyPushed;
int secondCandyTypePushed;

BOOL firstCandySelected;

@interface Game ()
@property (weak, nonatomic) IBOutlet UIButton *candy1;
@property (weak, nonatomic) IBOutlet UIButton *candy2;
@property (weak, nonatomic) IBOutlet UIButton *candy3;
@property (weak, nonatomic) IBOutlet UIButton *candy4;
@property (weak, nonatomic) IBOutlet UIButton *candy5;
@property (weak, nonatomic) IBOutlet UIButton *candy6;
@property (weak, nonatomic) IBOutlet UIButton *candy7;
@property (weak, nonatomic) IBOutlet UIButton *candy8;
@property (weak, nonatomic) IBOutlet UIButton *candy9;
@property (weak, nonatomic) IBOutlet UIButton *candy10;
@property (weak, nonatomic) IBOutlet UIButton *candy11;
@property (weak, nonatomic) IBOutlet UIButton *candy12;
@property (weak, nonatomic) IBOutlet UIButton *candy13;
@property (weak, nonatomic) IBOutlet UIButton *candy14;
@property (weak, nonatomic) IBOutlet UIButton *candy15;
@property (weak, nonatomic) IBOutlet UIButton *candy16;

@property (weak, nonatomic) IBOutlet UIImageView *candy1Selected;
@property (weak, nonatomic) IBOutlet UIImageView *candy2Selected;
@property (weak, nonatomic) IBOutlet UIImageView *candy3Selected;
@property (weak, nonatomic) IBOutlet UIImageView *candy4Selected;
@property (weak, nonatomic) IBOutlet UIImageView *candy5Selected;
@property (weak, nonatomic) IBOutlet UIImageView *candy6Selected;
@property (weak, nonatomic) IBOutlet UIImageView *candy7Selected;
@property (weak, nonatomic) IBOutlet UIImageView *candy8Selected;
@property (weak, nonatomic) IBOutlet UIImageView *candy9Selected;
@property (weak, nonatomic) IBOutlet UIImageView *candy10Selected;
@property (weak, nonatomic) IBOutlet UIImageView *candy11Selected;
@property (weak, nonatomic) IBOutlet UIImageView *candy12Selected;
@property (weak, nonatomic) IBOutlet UIImageView *candy13Selected;
@property (weak, nonatomic) IBOutlet UIImageView *candy14Selected;
@property (weak, nonatomic) IBOutlet UIImageView *candy15Selected;
@property (weak, nonatomic) IBOutlet UIImageView *candy16Selected;

@end

@implementation Game

- (void)checkSwap{
    if(firstCandyPushed == secondCandyPushed + 1){
        [self swapCandies];
    }else if(firstCandyPushed == secondCandyPushed - 1){
        [self swapCandies];
    }else if(firstCandyPushed == secondCandyPushed + 4){
        [self swapCandies];
    }else if(firstCandyPushed == secondCandyPushed - 4){
        [self swapCandies];
    }else{
        [self unSelectCandies];
    }
}
- (void)unSelectCandies{
    _candy1Selected.hidden = YES;
    _candy2Selected.hidden = YES;
    _candy3Selected.hidden = YES;
    _candy4Selected.hidden = YES;
    _candy5Selected.hidden = YES;
    _candy6Selected.hidden = YES;
    _candy7Selected.hidden = YES;
    _candy8Selected.hidden = YES;
    _candy9Selected.hidden = YES;
    _candy10Selected.hidden = YES;
    _candy11Selected.hidden = YES;
    _candy12Selected.hidden = YES;
    _candy13Selected.hidden = YES;
    _candy14Selected.hidden = YES;
    _candy15Selected.hidden = YES;
    _candy16Selected.hidden = YES;
    
    firstCandySelected = NO;
    firstCandyPushed = 0;
    firstCandyTypePushed = 0;
    secondCandyPushed = 0;
    secondCandyTypePushed = 0;
}
- (void)swapCandies{
    switch (firstCandyPushed) {
        case 1:
            candy1Type = secondCandyTypePushed;
            [self candy1SelectedType];
            break;
        case 2:
            candy1Type = secondCandyTypePushed;
            [self candy2SelectedType];
            break;
        case 3:
            candy3Type = secondCandyTypePushed;
            [self candy3SelectedType];
            break;
        case 4:
            candy4Type = secondCandyTypePushed;
            [self candy4SelectedType];
            break;
        case 5:
            candy5Type = secondCandyTypePushed;
            [self candy5SelectedType];
            break;
        case 6:
            candy6Type = secondCandyTypePushed;
            [self candy6SelectedType];
            break;
        case 7:
            candy7Type = secondCandyTypePushed;
            [self candy7SelectedType];
            break;
        case 8:
            candy8Type = secondCandyTypePushed;
            [self candy8SelectedType];
            break;
        case 9:
            candy9Type = secondCandyTypePushed;
            [self candy9SelectedType];
            break;
        case 10:
            candy10Type = secondCandyTypePushed;
            [self candy10SelectedType];
            break;
        case 11:
            candy11Type = secondCandyTypePushed;
            [self candy11SelectedType];
            break;
        case 12:
            candy12Type = secondCandyTypePushed;
            [self candy12SelectedType];
            break;
        case 13:
            candy13Type = secondCandyTypePushed;
            [self candy13SelectedType];
            break;
        case 14:
            candy14Type = secondCandyTypePushed;
            [self candy14SelectedType];
            break;
        case 15:
            candy15Type = secondCandyTypePushed;
            [self candy15SelectedType];
            break;
        case 16:
            candy16Type = secondCandyTypePushed;
            [self candy16SelectedType];
            break;
        default:
            break;
    }
    
    switch (secondCandyPushed) {
        case 1:
            candy1Type = firstCandyTypePushed;
            [self candy1SelectedType];
            break;
        case 2:
            candy1Type = firstCandyTypePushed;
            [self candy2SelectedType];
            break;
        case 3:
            candy3Type = firstCandyTypePushed;
            [self candy3SelectedType];
            break;
        case 4:
            candy4Type = firstCandyTypePushed;
            [self candy4SelectedType];
            break;
        case 5:
            candy5Type = firstCandyTypePushed;
            [self candy5SelectedType];
            break;
        case 6:
            candy6Type = firstCandyTypePushed;
            [self candy6SelectedType];
            break;
        case 7:
            candy7Type = firstCandyTypePushed;
            [self candy7SelectedType];
            break;
        case 8:
            candy8Type = firstCandyTypePushed;
            [self candy8SelectedType];
            break;
        case 9:
            candy9Type = firstCandyTypePushed;
            [self candy9SelectedType];
            break;
        case 10:
            candy10Type = firstCandyTypePushed;
            [self candy10SelectedType];
            break;
        case 11:
            candy11Type = firstCandyTypePushed;
            [self candy11SelectedType];
            break;
        case 12:
            candy12Type = firstCandyTypePushed;
            [self candy12SelectedType];
            break;
        case 13:
            candy13Type = firstCandyTypePushed;
            [self candy13SelectedType];
            break;
        case 14:
            candy14Type = firstCandyTypePushed;
            [self candy14SelectedType];
            break;
        case 15:
            candy15Type = firstCandyTypePushed;
            [self candy15SelectedType];
            break;
        case 16:
            candy16Type = firstCandyTypePushed;
            [self candy16SelectedType];
            break;
        default:
            break;
    }
    [self unSelectCandies];
}

- (IBAction)candy1Button:(id)sender {
    if(firstCandySelected==NO){
        _candy1Selected.hidden = NO;
        firstCandyPushed = 1;
        firstCandyTypePushed = candy1Type;
        firstCandySelected = YES;
    }else{
        secondCandyPushed = 1;
        secondCandyTypePushed = candy1Type;
        [self checkSwap];
    }
}
- (IBAction)candy2Button:(id)sender {
    if(firstCandySelected==NO){
        _candy2Selected.hidden = NO;
        firstCandyPushed = 2;
        firstCandyTypePushed = candy2Type;
        firstCandySelected = YES;
    }else{
        secondCandyPushed = 2;
        secondCandyTypePushed = candy2Type;
        [self checkSwap];
    }
}
- (IBAction)candy3Button:(id)sender {
    if(firstCandySelected==NO){
        _candy3Selected.hidden = NO;
        firstCandyPushed = 3;
        firstCandyTypePushed = candy3Type;
        firstCandySelected = YES;
    }else{
        secondCandyPushed = 3;
        secondCandyTypePushed = candy3Type;
        [self checkSwap];
    }
}
- (IBAction)candy4Button:(id)sender {
    if(firstCandySelected==NO){
        _candy4Selected.hidden = NO;
        firstCandyPushed = 4;
        firstCandyTypePushed = candy4Type;
        firstCandySelected = YES;
    }else{
        secondCandyPushed = 4;
        secondCandyTypePushed = candy4Type;
        [self checkSwap];
    }
}
- (IBAction)candy5Button:(id)sender {
    if(firstCandySelected==NO){
        _candy5Selected.hidden = NO;
        firstCandyPushed = 5;
        firstCandyTypePushed = candy5Type;
        firstCandySelected = YES;
    }else{
        secondCandyPushed = 5;
        secondCandyTypePushed = candy5Type;
        [self checkSwap];
    }
}
- (IBAction)candy6Button:(id)sender {
    if(firstCandySelected==NO){
        _candy6Selected.hidden = NO;
        firstCandyPushed = 6;
        firstCandyTypePushed = candy6Type;
        firstCandySelected = YES;
    }else{
        secondCandyPushed = 6;
        secondCandyTypePushed = candy6Type;
        [self checkSwap];
    }
}
- (IBAction)candy7Button:(id)sender {
    if(firstCandySelected==NO){
        _candy7Selected.hidden = NO;
        firstCandyPushed = 7;
        firstCandyTypePushed = candy7Type;
        firstCandySelected = YES;
    }else{
        secondCandyPushed = 7;
        secondCandyTypePushed = candy7Type;
        [self checkSwap];
    }
}
- (IBAction)candy8Button:(id)sender {
    if(firstCandySelected==NO){
        _candy8Selected.hidden = NO;
        firstCandyPushed = 8;
        firstCandyTypePushed = candy8Type;
        firstCandySelected = YES;
    }else{
        secondCandyPushed = 8;
        secondCandyTypePushed = candy8Type;
        [self checkSwap];
    }
}
- (IBAction)candy9Button:(id)sender {
    if(firstCandySelected==NO){
        _candy9Selected.hidden = NO;
        firstCandyPushed = 9;
        firstCandyTypePushed = candy9Type;
        firstCandySelected = YES;
    }else{
        secondCandyPushed = 9;
        secondCandyTypePushed = candy9Type;
        [self checkSwap];
    }
}
- (IBAction)candy10Button:(id)sender {
    if(firstCandySelected==NO){
        _candy10Selected.hidden = NO;
        firstCandyPushed = 10;
        firstCandyTypePushed = candy10Type;
        firstCandySelected = YES;
    }else{
        secondCandyPushed = 10;
        secondCandyTypePushed = candy10Type;
        [self checkSwap];
    }
}
- (IBAction)candy11Button:(id)sender {
    if(firstCandySelected==NO){
        _candy11Selected.hidden = NO;
        firstCandyPushed = 11;
        firstCandyTypePushed = candy11Type;
        firstCandySelected = YES;
    }else{
        secondCandyPushed = 11;
        secondCandyTypePushed = candy11Type;
        [self checkSwap];
    }
}
- (IBAction)candy12Button:(id)sender {
    if(firstCandySelected==NO){
        _candy12Selected.hidden = NO;
        firstCandyPushed = 12;
        firstCandyTypePushed = candy12Type;
        firstCandySelected = YES;
    }else{
        secondCandyPushed = 12;
        secondCandyTypePushed = candy12Type;
        [self checkSwap];
    }
}
- (IBAction)candy13Button:(id)sender {
    if(firstCandySelected==NO){
        _candy13Selected.hidden = NO;
        firstCandyPushed = 13;
        firstCandyTypePushed = candy13Type;
        firstCandySelected = YES;
    }else{
        secondCandyPushed = 13;
        secondCandyTypePushed = candy13Type;
        [self checkSwap];
    }
}
- (IBAction)candy14Button:(id)sender {
    if(firstCandySelected==NO){
        _candy14Selected.hidden = NO;
        firstCandyPushed = 14;
        firstCandyTypePushed = candy14Type;
        firstCandySelected = YES;
    }else{
        secondCandyPushed = 14;
        secondCandyTypePushed = candy14Type;
        [self checkSwap];
    }
}
- (IBAction)candy15Button:(id)sender {
    if(firstCandySelected==NO){
        _candy15Selected.hidden = NO;
        firstCandyPushed = 15;
        firstCandyTypePushed = candy15Type;
        firstCandySelected = YES;
    }else{
        secondCandyPushed = 15;
        secondCandyTypePushed = candy15Type;
        [self checkSwap];
    }
}
- (IBAction)candy16Button:(id)sender {
    if(firstCandySelected==NO){
        _candy16Selected.hidden = NO;
        firstCandyPushed = 16;
        firstCandyTypePushed = candy16Type;
        firstCandySelected = YES;
    }else{
        secondCandyPushed = 16;
        secondCandyTypePushed = candy16Type;
        [self checkSwap];
    }
}


-(void)candy1SelectedType{
    switch (candy1Type) {
        case 0:{
            UIImage *buttonImage = [UIImage imageNamed:@"blue.png"];
            [_candy1 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy1];
            break;
        }
        case 1:{
            UIImage *buttonImage = [UIImage imageNamed:@"pink.png"];
            [_candy1 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy1];
            break;
        }
        case 2:{
            UIImage *buttonImage = [UIImage imageNamed:@"green.png"];
            [_candy1 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy1];
            break;
        }
        case 3:{
            UIImage *buttonImage = [UIImage imageNamed:@"yellow.png"];
            [_candy1 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy1];
            break;
        }
            
        default:
            break;
    }
}
-(void)candy2SelectedType{
    switch (candy2Type) {
        case 0:{
            UIImage *buttonImage = [UIImage imageNamed:@"blue.png"];
            [_candy2 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy2];
            break;
        }
        case 1:{
            UIImage *buttonImage = [UIImage imageNamed:@"pink.png"];
            [_candy2 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy2];
            break;
        }
        case 2:{
            UIImage *buttonImage = [UIImage imageNamed:@"green.png"];
            [_candy2 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy2];
            break;
        }
        case 3:{
            UIImage *buttonImage = [UIImage imageNamed:@"yellow.png"];
            [_candy2 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy2];
            break;
        }
            
        default:
            break;
    }
}
-(void)candy3SelectedType{
    switch (candy3Type) {
        case 0:{
            UIImage *buttonImage = [UIImage imageNamed:@"blue.png"];
            [_candy3 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy3];
            break;
        }
        case 1:{
            UIImage *buttonImage = [UIImage imageNamed:@"pink.png"];
            [_candy3 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy3];
            break;
        }
        case 2:{
            UIImage *buttonImage = [UIImage imageNamed:@"green.png"];
            [_candy3 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy3];
            break;
        }
        case 3:{
            UIImage *buttonImage = [UIImage imageNamed:@"yellow.png"];
            [_candy3 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy3];
            break;
        }
            
        default:
            break;
    }
}
-(void)candy4SelectedType{
    switch (candy4Type) {
        case 0:{
            UIImage *buttonImage = [UIImage imageNamed:@"blue.png"];
            [_candy4 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy4];
            break;
        }
        case 1:{
            UIImage *buttonImage = [UIImage imageNamed:@"pink.png"];
            [_candy4 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy4];
            break;
        }
        case 2:{
            UIImage *buttonImage = [UIImage imageNamed:@"green.png"];
            [_candy4 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy4];
            break;
        }
        case 3:{
            UIImage *buttonImage = [UIImage imageNamed:@"yellow.png"];
            [_candy4 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy4];
            break;
        }
            
        default:
            break;
    }
}
-(void)candy5SelectedType{
    switch (candy5Type) {
        case 0:{
            UIImage *buttonImage = [UIImage imageNamed:@"blue.png"];
            [_candy5 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy5];
            break;
        }
        case 1:{
            UIImage *buttonImage = [UIImage imageNamed:@"pink.png"];
            [_candy5 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy5];
            break;
        }
        case 2:{
            UIImage *buttonImage = [UIImage imageNamed:@"green.png"];
            [_candy5 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy5];
            break;
        }
        case 3:{
            UIImage *buttonImage = [UIImage imageNamed:@"yellow.png"];
            [_candy5 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy5];
            break;
        }
            
        default:
            break;
    }
}
-(void)candy6SelectedType{
    switch (candy6Type) {
        case 0:{
            UIImage *buttonImage = [UIImage imageNamed:@"blue.png"];
            [_candy6 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy6];
            break;
        }
        case 1:{
            UIImage *buttonImage = [UIImage imageNamed:@"pink.png"];
            [_candy6 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy6];
            break;
        }
        case 2:{
            UIImage *buttonImage = [UIImage imageNamed:@"green.png"];
            [_candy6 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy6];
            break;
        }
        case 3:{
            UIImage *buttonImage = [UIImage imageNamed:@"yellow.png"];
            [_candy6 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy6];
            break;
        }
            
        default:
            break;
    }
}
-(void)candy7SelectedType{
    switch (candy7Type) {
        case 0:{
            UIImage *buttonImage = [UIImage imageNamed:@"blue.png"];
            [_candy7 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy7];
            break;
        }
        case 1:{
            UIImage *buttonImage = [UIImage imageNamed:@"pink.png"];
            [_candy7 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy7];
            break;
        }
        case 2:{
            UIImage *buttonImage = [UIImage imageNamed:@"green.png"];
            [_candy7 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy7];
            break;
        }
        case 3:{
            UIImage *buttonImage = [UIImage imageNamed:@"yellow.png"];
            [_candy7 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy7];
            break;
        }
            
        default:
            break;
    }
}
-(void)candy8SelectedType{
    switch (candy8Type) {
        case 0:{
            UIImage *buttonImage = [UIImage imageNamed:@"blue.png"];
            [_candy8 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy8];
            break;
        }
        case 1:{
            UIImage *buttonImage = [UIImage imageNamed:@"pink.png"];
            [_candy8 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy8];
            break;
        }
        case 2:{
            UIImage *buttonImage = [UIImage imageNamed:@"green.png"];
            [_candy8 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy8];
            break;
        }
        case 3:{
            UIImage *buttonImage = [UIImage imageNamed:@"yellow.png"];
            [_candy8 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy8];
            break;
        }
            
        default:
            break;
    }
}
-(void)candy9SelectedType{
    switch (candy9Type) {
        case 0:{
            UIImage *buttonImage = [UIImage imageNamed:@"blue.png"];
            [_candy9 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy9];
            break;
        }
        case 1:{
            UIImage *buttonImage = [UIImage imageNamed:@"pink.png"];
            [_candy9 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy9];
            break;
        }
        case 2:{
            UIImage *buttonImage = [UIImage imageNamed:@"green.png"];
            [_candy9 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy9];
            break;
        }
        case 3:{
            UIImage *buttonImage = [UIImage imageNamed:@"yellow.png"];
            [_candy9 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy9];
            break;
        }
            
        default:
            break;
    }
}
-(void)candy10SelectedType{
    switch (candy10Type) {
        case 0:{
            UIImage *buttonImage = [UIImage imageNamed:@"blue.png"];
            [_candy10 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy10];
            break;
        }
        case 1:{
            UIImage *buttonImage = [UIImage imageNamed:@"pink.png"];
            [_candy10 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy10];
            break;
        }
        case 2:{
            UIImage *buttonImage = [UIImage imageNamed:@"green.png"];
            [_candy10 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy10];
            break;
        }
        case 3:{
            UIImage *buttonImage = [UIImage imageNamed:@"yellow.png"];
            [_candy10 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy10];
            break;
        }
            
        default:
            break;
    }
}
-(void)candy11SelectedType{
    switch (candy11Type) {
        case 0:{
            UIImage *buttonImage = [UIImage imageNamed:@"blue.png"];
            [_candy11 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy11];
            break;
        }
        case 1:{
            UIImage *buttonImage = [UIImage imageNamed:@"pink.png"];
            [_candy11 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy11];
            break;
        }
        case 2:{
            UIImage *buttonImage = [UIImage imageNamed:@"green.png"];
            [_candy11 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy11];
            break;
        }
        case 3:{
            UIImage *buttonImage = [UIImage imageNamed:@"yellow.png"];
            [_candy11 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy11];
            break;
        }
            
        default:
            break;
    }
}
-(void)candy12SelectedType{
    switch (candy12Type) {
        case 0:{
            UIImage *buttonImage = [UIImage imageNamed:@"blue.png"];
            [_candy12 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy12];
            break;
        }
        case 1:{
            UIImage *buttonImage = [UIImage imageNamed:@"pink.png"];
            [_candy12 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy12];
            break;
        }
        case 2:{
            UIImage *buttonImage = [UIImage imageNamed:@"green.png"];
            [_candy12 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy12];
            break;
        }
        case 3:{
            UIImage *buttonImage = [UIImage imageNamed:@"yellow.png"];
            [_candy12 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy12];
            break;
        }
            
        default:
            break;
    }
}
-(void)candy13SelectedType{
    switch (candy13Type) {
        case 0:{
            UIImage *buttonImage = [UIImage imageNamed:@"blue.png"];
            [_candy13 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy13];
            break;
        }
        case 1:{
            UIImage *buttonImage = [UIImage imageNamed:@"pink.png"];
            [_candy13 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy13];
            break;
        }
        case 2:{
            UIImage *buttonImage = [UIImage imageNamed:@"green.png"];
            [_candy13 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy13];
            break;
        }
        case 3:{
            UIImage *buttonImage = [UIImage imageNamed:@"yellow.png"];
            [_candy13 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy13];
            break;
        }
            
        default:
            break;
    }
}
-(void)candy14SelectedType{
    switch (candy14Type) {
        case 0:{
            UIImage *buttonImage = [UIImage imageNamed:@"blue.png"];
            [_candy14 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy14];
            break;
        }
        case 1:{
            UIImage *buttonImage = [UIImage imageNamed:@"pink.png"];
            [_candy14 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy14];
            break;
        }
        case 2:{
            UIImage *buttonImage = [UIImage imageNamed:@"green.png"];
            [_candy14 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy14];
            break;
        }
        case 3:{
            UIImage *buttonImage = [UIImage imageNamed:@"yellow.png"];
            [_candy14 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy14];
            break;
        }
            
        default:
            break;
    }
}
-(void)candy15SelectedType{
    switch (candy15Type) {
        case 0:{
            UIImage *buttonImage = [UIImage imageNamed:@"blue.png"];
            [_candy15 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy15];
            break;
        }
        case 1:{
            UIImage *buttonImage = [UIImage imageNamed:@"pink.png"];
            [_candy15 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy15];
            break;
        }
        case 2:{
            UIImage *buttonImage = [UIImage imageNamed:@"green.png"];
            [_candy15 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy15];
            break;
        }
        case 3:{
            UIImage *buttonImage = [UIImage imageNamed:@"yellow.png"];
            [_candy15 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy15];
            break;
        }
            
        default:
            break;
    }
}
-(void)candy16SelectedType{
    switch (candy16Type) {
        case 0:{
            UIImage *buttonImage = [UIImage imageNamed:@"blue.png"];
            [_candy16 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy16];
            break;
        }
        case 1:{
            UIImage *buttonImage = [UIImage imageNamed:@"pink.png"];
            [_candy16 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy16];
            break;
        }
        case 2:{
            UIImage *buttonImage = [UIImage imageNamed:@"green.png"];
            [_candy16 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy16];
            break;
        }
        case 3:{
            UIImage *buttonImage = [UIImage imageNamed:@"yellow.png"];
            [_candy16 setImage:buttonImage forState:UIControlStateNormal];
            [self.view addSubview:_candy16];
            break;
        }
            
        default:
            break;
    }
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _candy1Selected.hidden = YES;
    _candy2Selected.hidden = YES;
    _candy3Selected.hidden = YES;
    _candy4Selected.hidden = YES;
    _candy5Selected.hidden = YES;
    _candy6Selected.hidden = YES;
    _candy7Selected.hidden = YES;
    _candy8Selected.hidden = YES;
    _candy9Selected.hidden = YES;
    _candy10Selected.hidden = YES;
    _candy11Selected.hidden = YES;
    _candy12Selected.hidden = YES;
    _candy13Selected.hidden = YES;
    _candy14Selected.hidden = YES;
    _candy15Selected.hidden = YES;
    _candy16Selected.hidden = YES;
    
    candy1Type = arc4random() % 4;
    candy2Type = arc4random() % 4;
    candy3Type = arc4random() % 4;
    candy4Type = arc4random() % 4;
    candy5Type = arc4random() % 4;
    candy6Type = arc4random() % 4;
    candy7Type = arc4random() % 4;
    candy8Type = arc4random() % 4;
    candy9Type = arc4random() % 4;
    candy10Type = arc4random() % 4;
    candy11Type = arc4random() % 4;
    candy12Type = arc4random() % 4;
    candy13Type = arc4random() % 4;
    candy14Type = arc4random() % 4;
    candy15Type = arc4random() % 4;
    candy16Type = arc4random() % 4;
    
    [self candy1SelectedType];
    [self candy2SelectedType];
    [self candy3SelectedType];
    [self candy4SelectedType];
    [self candy5SelectedType];
    [self candy6SelectedType];
    [self candy7SelectedType];
    [self candy8SelectedType];
    [self candy9SelectedType];
    [self candy10SelectedType];
    [self candy11SelectedType];
    [self candy12SelectedType];
    [self candy13SelectedType];
    [self candy14SelectedType];
    [self candy15SelectedType];
    [self candy16SelectedType];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
