module DotTests exposing (suite)

import Expect exposing (Expectation)
import ReCase exposing (..)
import Test exposing (..)


suite : Test
suite =
    describe "ReCase tests"
        [ describe "Test conversions to dot.case"
            [ test "from camelCase" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "dotCase")
            , test "from CONSTANT_CASE" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "DOT_CASE")
            , test "from dot.case" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "dot.case")
            , test "from kebab-case" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "dot-case")
            , test "from PascalCase" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "DotCase")
            , test "from Path/Case" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "Dot/Case")
            , test "from Sentence case" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "Dot case")
            , test "from snake_case" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "dot_case")
            , test "from Title Case" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "Dot Case")
            ]
        ]
