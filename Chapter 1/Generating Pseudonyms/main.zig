const std = @import("std");
const print = std.debug.print;

pub fn main() !void {
    const allocator = std.heap.page_allocator;

    var rng = std.rand.DefaultPrng.init(@intCast(std.time.nanoTimestamp()));

    const text = try std.fs.cwd().readFileAlloc(allocator, "first names", 1000);

    const random_index = rng.random().intLessThan(@intCast(text.len));

    const random_index2: usize = @intCast(random_index);

    std.debug.print("Random! {}\n", .{text[random_index2]});
}
