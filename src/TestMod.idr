module TestMod

%foreign "C:addThings,libtest"
export
addThings : Int -> Int -> Int

%foreign "C:ioAddThings,libtest"
prim_ioAddThings : Int -> Int -> PrimIO Int

export
ioAddThings : Int -> Int -> IO Int
ioAddThings x y = primIO $ prim_ioAddThings x y

%foreign "C:runCallback,libtest"
export
runCallback : (Int -> Int -> Int) -> Int -> Int -> Int
