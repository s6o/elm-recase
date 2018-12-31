module ConstantTests exposing (suite)

import Expect exposing (Expectation)
import ReCase exposing (..)
import Test exposing (..)


suite : Test
suite =
    describe "ReCase tests"
        [ describe "Test conversions to CONSTANT_CASE"
            [ test "from camelCase" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "constantCase")
            , test "from CONSTANT_CASE" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "CONSTANT_CASE")
            , test "from dot.case" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "constant.case")
            , test "from kebab-case" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "constant-case")
            , test "from PascalCase" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "ConstantCase")
            , test "from Path/Case" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "Constant/Case")
            , test "from Sentence case" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "Constant case")
            , test "from snake_case" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "constant_case")
            , test "from Title Case" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "Constant Case")
            ]
        ]
