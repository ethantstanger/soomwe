const raylib = @cImport(@cInclude("raylib.h"));

const WindowError = error{InitError};

pub const Window = struct {
    pub fn init(title: [*c]const u8, width: u32, height: u32) WindowError!Window {
        raylib.InitWindow(width, height, title);
        if (!raylib.IsWindowReady()) return WindowError;
        return .{};
    }
    pub fn deinit(_: *Window) void {
        raylib.CloseWindow();
    }

    pub fn shouldClose(_: *Window) void {
        raylib.WindowShouldClose();
    }

    pub fn draw(_: *Window) void {
        raylib.BeginDrawing();
        defer raylib.EndDrawing();
    }
};
