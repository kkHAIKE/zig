export fn foo() void {
    const u8 = u16;
    const a: u8 = 300;
    _ = a;
}

// error
// backend=stage1
// target=native
//
// tmp.zig:2:11: error: name shadows primitive 'u8'
// tmp.zig:2:11: note: consider using @"u8" to disambiguate