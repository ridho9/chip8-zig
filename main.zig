const std = @import("std");
const rl = @import("raylib");

pub fn main() !void {
    // const cpu = CPU{};
    const screenWidth = 800;
    const screenHeight = 450;

    rl.initWindow(screenWidth, screenHeight, "raylib-zig [core] example - basic window");
    defer rl.closeWindow();

    rl.setTargetFPS(60); // Set our game to run at 60 frames-per-second
    //--------------------------------------------------------------------------------------

    // Main game loop
    while (!rl.windowShouldClose()) { // Detect window close button or ESC key
        // Update
        //----------------------------------------------------------------------------------
        // TODO: Update your variables here
        //----------------------------------------------------------------------------------

        // Draw
        //----------------------------------------------------------------------------------
        rl.beginDrawing();
        defer rl.endDrawing();

        rl.clearBackground(rl.Color.black);

        rl.drawText("Congrats! You created your first window!", 190, 200, 20, rl.Color.light_gray);
        //----------------------------------------------------------------------------------
    }
}

pub const CPU = struct {
    memory: [0x1000]u8 = std.mem.zeroes(),
    v_reg: [0x10]u8 = std.mem.zeroes(),
    i_reg: u16 = 0,
    pc: u16 = 0x200,

    stack: [256]u8 = std.mem.zeroes(),
    sp: u8 = 0,
};
