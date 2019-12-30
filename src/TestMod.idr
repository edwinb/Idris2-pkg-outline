module TestMod

-- Build a calling convention string for a function in libtest.so, given
-- the C function's name
libtest : String -> String
libtest f = "C:" ++ f ++ ",libtest"

-- A %foreign declaration takes a block of Idris expressions, which must
-- evaluate to Strings, each describing a calling convention which describes
-- how to make a foreign call to that function.
-- A backend will select the first calling convention it knows how to
-- handle (if any), otherwise it will report an error.
%foreign libtest "addThings"
export
addThings : Int -> Int -> Int

%foreign libtest "ioAddThings"
prim_ioAddThings : Int -> Int -> PrimIO Int

export
ioAddThings : Int -> Int -> IO Int
ioAddThings x y = primIO $ prim_ioAddThings x y

%foreign libtest "runCallback"
export
runCallback : (Int -> Int -> Int) -> Int -> Int -> Int
