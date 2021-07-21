//
//  main.m
//  libvmafExample
//
//  Created by lizhuoli on 2021/7/21.
//

#import <Foundation/Foundation.h>
#import <libvmaf/libvmaf.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        VmafContext *ctx;
        VmafConfiguration cfg = {};
        vmaf_init(&ctx, cfg);
        vmaf_close(ctx);
    }
    return 0;
}
