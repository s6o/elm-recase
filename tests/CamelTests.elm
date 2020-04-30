module CamelTests exposing (suite)

import Expect exposing (Expectation)
import ReCase exposing (ReCase(..), recase)
import Test exposing (Test, describe, test)


suite : Test
suite =
    describe "ReCase tests"
        [ describe "Test conversions to camelCase"
            [ test "from camelCase" <|
                \_ -> Expect.equal "oneTwoThreeFourFive" (recase ToCamel "oneTwoThreeFourFive")
            , test "from CONSTANT_CASE" <|
                \_ -> Expect.equal "oneTwoThreeFourFive" (recase ToCamel "ONE_TWO_THREE_FOUR_FIVE")
            , test "from dot.case" <|
                \_ -> Expect.equal "oneTwoThreeFourFive" (recase ToCamel "one.two.three.four.five")
            , test "from kebab-case" <|
                \_ -> Expect.equal "oneTwoThreeFourFive" (recase ToCamel "one-two-three-four-five")
            , test "from PascalCase" <|
                \_ -> Expect.equal "oneTwoThreeFourFive" (recase ToCamel "OneTwoThreeFourFive")
            , test "from Path/Case" <|
                \_ -> Expect.equal "oneTwoThreeFourFive" (recase ToCamel "One/Two/Three/Four/Five")
            , test "from Sentence case" <|
                \_ -> Expect.equal "oneTwoThreeFourFive" (recase ToCamel "One two three four five")
            , test "from snake_case" <|
                \_ -> Expect.equal "oneTwoThreeFourFive" (recase ToCamel "one_two_three_four_five")
            , test "from Title Case" <|
                \_ -> Expect.equal "oneTwoThreeFourFive" (recase ToCamel "One Two Three Four Five")
            ]
        ]
