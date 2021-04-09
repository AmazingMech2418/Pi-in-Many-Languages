const std = @import("std");

const NilakanthaSeries = struct {
    const Self = @This();
    a: i64 = 2,
    s: i32 = 1,
    pi: f128 = 3.0,

    pub fn init() Self {
        return Self {
            .a = 2,
            .s = 1,
            .pi = 3.0
        };
    }

    pub fn iterate(self: *NilakanthaSeries) void {
        var a: f128 = @intToFloat(f128, self.a);
        var s: f128 = @intToFloat(f128, self.s);
        self.pi += s*(4.0/(a*(a*(a+3.0)+2.0)));
        self.a += 2;
        self.s = -self.s;
    }
};

pub fn main() !void {
    const stdout = std.io.getStdOut().writer();
    
    var approximator = NilakanthaSeries.init();

    var i: i32 = 0;
    while (i < 10000000) {
        NilakanthaSeries.iterate(&approximator);
        i += 1;
    }

    // For 21-place print
    const pi: i128 = @floatToInt(i128, (approximator.pi - 3.0) * 1e21);

    // Normal print
    try stdout.print("pi = {}\n", .{approximator.pi});
    // 21-place print
    try stdout.print("pi = 3.{}\n", .{pi});
}
