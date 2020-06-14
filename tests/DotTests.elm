module DotTests exposing (suite)

import Expect exposing (Expectation)
import ReCase exposing (ReCase(..), recase)
import Test exposing (Test, describe, test)


suite : Test
suite =
    describe "ReCase tests"
        [ describe "Test conversions to dot.case"
            [ test "from camelCase" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "dotCase")
            , test "from camelCase2" <|
                \_ -> Expect.equal "one.two.three.four.five" (recase ToDot "oneTwoThreeFourFive")
            , test "from CONSTANT_CASE" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "DOT_CASE")
            , test "from CONSTANT_CASE2" <|
                \_ -> Expect.equal "one.two.three.four.five" (recase ToDot "ONE_TWO_THREE_FOUR_FIVE")
            , test "from dot.case" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "dot.case")
            , test "from dot.case2" <|
                \_ -> Expect.equal "one.two.three.four.five" (recase ToDot "one.two.three.four.five")
            , test "from kebab-case" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "dot-case")
            , test "from kebab-case2" <|
                \_ -> Expect.equal "one.two.three.four.five" (recase ToDot "one-two-three-four-five")
            , test "from PascalCase" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "DotCase")
            , test "from PascalCase2" <|
                \_ -> Expect.equal "one.two.three.four.five" (recase ToDot "OneTwoThreeFourFive")
            , test "from Path/Case" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "Dot/Case")
            , test "from Path/Case2" <|
                \_ -> Expect.equal "one.two.three.four.five" (recase ToDot "One/Two/Three/Four/Five")
            , test "from Sentence case" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "Dot case")
            , test "from Sentence case2" <|
                \_ -> Expect.equal "one.two.three.four.five" (recase ToDot "One two three four five")
            , test "from snake_case" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "dot_case")
            , test "from snake_case2" <|
                \_ -> Expect.equal "one.two.three.four.five" (recase ToDot "one_two_three_four_five")
            , test "from Title Case" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "Dot Case")
            , test "from Title Case2" <|
                \_ -> Expect.equal "one.two.three.four.five" (recase ToDot "One Two Three Four Five")
            ]
        ]
