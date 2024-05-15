const std = @import("std");

pub fn main() !void {
    const allocator = std.heap.page_allocator;

    const stdin = std.io.getStdIn().reader();
    const stdout = std.io.getStdOut().writer();
    const slice = try allocator.alloc(u8, 10);
    defer allocator.free(slice);

    try stdout.writeAll("Hello World!\n");
    const data = try stdin.readUntilDelimiterOrEof(slice, '\n') orelse return;
    try stdout.writeAll(data);
}