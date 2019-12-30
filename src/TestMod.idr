module TestMod

%foreign "C:addThings,libtest"
export
addThings : Int -> Int -> Int
