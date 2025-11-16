const raylib = @cImport(@cInclude("raylib.h"));

const Window = struct {
    const init = raylib.InitWindow;
    const deinit = raylib.CloseWindow;
    const shouldClose = raylib.WindowShouldClose;
};
