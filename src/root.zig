//! `zu` is a collection of small utilities that are useful for writing zig programs
//! quickly.
//!
//! Very few (if any) of the data structures here are optimized for writing
//! optimal programs; they exist to help the user write programs quickly and with
//! minimal bugs.

pub const convert = @import("convert.zig");
pub const DualArena = @import("DualArena.zig");
pub const Error = @import("Error.zig");
pub const MainAllocator = @import("MainAllocator.zig");
pub const Numeric = @import("numeric.zig").Numeric;
pub const Queue = @import("queue.zig").Queue;
pub const string = @import("string.zig");
pub const String = string.String;
pub const StringPool = @import("StringPool.zig");

test {
    comptime {
        @import("std").testing.refAllDeclsRecursive(@This());
    }
}
