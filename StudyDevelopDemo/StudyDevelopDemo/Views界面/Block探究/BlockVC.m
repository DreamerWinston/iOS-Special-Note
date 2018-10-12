//
//  BlockVC.m
//  StudyDevelopDemo
//
//  Created by winston on 2018/10/11.
//  Copyright © 2018 winston. All rights reserved.
//

#import "BlockVC.h"

@interface BlockVC ()

@end

@implementation BlockVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    

}

//block在运行时，其block内部执行逻辑会被封装为一个func函数，并生成一个对应的数据结构block_impl,
//并将func函数地址赋值给block_impl中的*FuncPtr
//当block调用时，会进入block_impl结构体中 调用*FuncPtr中的所存储地址的函数。

//block底层结构
struct __main_block_desc_0{
    size_t reserved;//保留 赋值为0
    size_t Block_size; //block 大小
};

struct __block_impl{
    void * isa;//block isa
    int Flags;//默认是0
    int Reserved;//保留 赋值为0
    void *FuncPtr;//block 函数执行地址
};

struct __main_block_impl_ {
    struct __block_impl impl;//block 函数实现
    struct __main_block_desc_0 * Desc;//block 描述
};



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
