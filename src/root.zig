const raylib = @cImport(@cInclude("raylib.h"));

pub const window = struct {
    const init = raylib.InitWindow;
    const deinit = raylib.CloseWindow;
    const shouldClose = raylib.WindowShouldClose;
};
