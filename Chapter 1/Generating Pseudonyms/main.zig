const std = @import("std");

pub fn main() !void {
    const stdin = std.io.getStdIn().reader();
    const stdout = std.io.getStdOut().writer();
    var buffer: [1024]u8 = undefined;
    const buffer_slice = buffer[0..];

    try stdout.writeAll("Hello World!");
    const len = try stdin.readUntilDelimiterOrEof(buffer_slice, '\n');
    try stdout.writeAll(buffer_slice[0..len]);
}


