//
//  ViewController.m
//  OC 算法版
//
//  Created by 魏跃勇 on 2022/10/22.
//

#import "ViewController.h"

@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (nonatomic,strong) NSArray *titleArray;
@end

@implementation ViewController

//
//  ViewController.m
//  写着玩
//
//  Created by 魏跃勇 on 2020/8/26.
//  Copyright © 2020 魏跃勇. All rights reserved.
//

//#import "ViewController.h"
//
//@interface ViewController ()
//
//@end
//
//@implementation ViewController
//
//- (void)viewDidLoad {
//    [super viewDidLoad];
//    // Do any additional setup after loading the view.
//   // NSString *str = @"abacba";
//
//   // int [][]  = @[@[],@[],@[],@[]];
//    NSArray *a = @[@1,@2,@3];
//    NSArray *b = @[@4,@5,@6];
//    NSArray *c = @[@7,@8,@9];
//    NSMutableArray *s = [NSMutableArray arrayWithObjects:a,b,c,nil];
//    NSLog(@"%ld",s.count-1);
////    for (int i = s.count-1; i>=0; i--) {
////        NSArray *tmp = s[i];
//////        NSLog(@"tmp:%@",tmp);
////        for (int j = tmp.count - 1 ; j>= 0; j--) {
////            NSLog(@"数字:%@",tmp[j]);
////        }
////    }
//
//
////    for (int i = 0;i< str.length; i++) {
////       char a = [str characterAtIndex:i];
////         NSLog(@"%c",a);
////    }
//     int count = [self getPublicStr:@"abcd" str2:@"ace"];
//    NSLog(@"公共:%d",count);
//    int huiwenCount = [self getHuiwenSeq:@"bab"];
//    NSLog(@"回文:%d",huiwenCount);
//    NSArray *arr = @[@10,@9,@2,@5,@3,@7,@101,@18];
//    NSArray *arr1 = @[@1,@2,@3];
//    int longupCount = [self getLongUpSeq2:arr];
//    NSLog(@"最长上升:%d",longupCount);
//    //最大连续子序列和
//    NSArray *arr2 = @[@(1),@(2)];
//    int lianxunCount = [self getMaxlianxunsubSeq:arr2];
//    NSLog(@"最长连续子数组:%d",lianxunCount);
//}
//
//
//- (int)getHuiwenSeq:(NSString *)str{
//    //从第i个位置到第j个位置的最长子序列
//    NSUInteger len = str.length;
//    int dp[len][len];
//    for (int i = 0; i< len; i++) {
//        dp[i][i] = 1;
//    }
//
//   for (int i = 1; i<len; i++) {
//       // for (int j = len -1 ; j>= i; j--) {
//          for (int j = i + 1 ; j<len; j++){
//             if (dp[i] == dp[j]) {
//                dp[i][j] = dp[i+1][j-1]+2;
//             }else{
//                dp[i][j] = MAX(dp[i+1][j], dp[i][j-1]);
//            }
//        }
//    }
//    return dp[0][len-1];
//}
//- (int)getPublicStr:(NSString *)str1 str2:(NSString *)str2{
//    NSUInteger len1 = str1.length;
//    NSUInteger len2 = str2.length;
//    int dp[100][100];//初始化dp
//    for (int i= 0; i<= len1; i++)
//        dp [i][0] = 0;  //base 状态
//    for (int j = 0; j<= len2; j++)
//        dp [0][j] = 0;
//    for (int i = 1; i<=len1; i++) {
//        for (int j = 1; j<=len2; j++) {
//            if ([str1 characterAtIndex:i-1] == [str2 characterAtIndex:j-1]) {
//                dp[i][j] = dp[i-1][j-1] + 1;
//            }else{
//                dp[i][j] = MAX(dp[i-1][j], dp[i][j-1]);
//            }
//        }
//    }
//    return dp[len1][len2];
//}
////有问题版
//- (int)getLongUpSeq:(NSArray *)array{
//    if (array.count == 0) {
//        return 0;
//    }
//    int len = array.count;
//    int dp[len];
//    int max = 1;
//    for(int i = 0;i<len;i++){
//        dp[i] = 1;
//    }
//    for (int i = 0; i<len; i++) {
//        for (int j= 0 ; j<i ; j++) {
//            if ([array[j] intValue] < [array[i] intValue]) {
//                dp[i] = MAX(dp[i], dp[j]+1);
//                  max = MAX(max, dp[i]);
//            }
//
//        }
//
//    }
//    return max;
//}
//- (int)getLongUpSeq2:(NSArray *)arr{
//          // NSArray * arr = @[@10,@9,@2,@5,@3,@7,@101,@18];
//
//           NSMutableArray * mutArr = [[NSMutableArray alloc] init];
//
//           int count = 0;
//
//           for (int i = 0; i < arr.count; i++) {
//
//               [mutArr removeAllObjects];
//
//               [mutArr addObject:arr[i]];
//
//               for (int j = i+1; j < arr.count; j++) {
//
//
//                   if ([arr[j] intValue] > [[mutArr lastObject] intValue]) {
//                       [mutArr addObject:arr[j]];
//                   }
//               }
//
//               if (count < mutArr.count) {
//                   count = mutArr.count;
//               }
//           }
//
//           NSLog(@"%d",count);
//    return count;
//}
//- (int)getMaxlianxunsubSeq:(NSArray *)arr{
//    int  maxSum = [arr[0] intValue];
//    int  sum = [arr[0] intValue];
//    for (int i = 1; i<arr.count; i++) {
//        if (sum > 0) {
//            sum = sum + [arr[i] intValue];
//        }else{
//            sum = sum;
//        }
//        maxSum = MAX(maxSum, sum);
//    }
//    return maxSum;
//}
//
//@end


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.titleArray = @[@"1.最长公共字串",@"2.最长回文字串",@"3.最长上升子串",@"4.最长连续子数组",@"a",@"b",@"c",@"d",@"E",@"F"];
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.titleArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"123");
    NSLog(@"456");
    NSLog(@"789");
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if(cell == nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = self.titleArray[indexPath.row];
    return cell;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    switch (indexPath.row) {
        case 0:
                
            break;
            
        default:
            break;
    }
}

@end
