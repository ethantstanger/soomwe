const raylib = @cImport(@cInclude("raylib.h"));

pub const window = struct {
    pub const init = raylib.InitWindow;
    pub const deinit = raylib.CloseWindow;
    pub const shouldClose = raylib.WindowShouldClose;
};
