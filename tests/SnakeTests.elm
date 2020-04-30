module SnakeTests exposing (suite)

import Expect exposing (Expectation)
import ReCase exposing (ReCase(..), recase)
import Test exposing (Test, describe, test)


suite : Test
suite =
    describe "ReCase tests"
        [ describe "Test conversions to snake_case"
            [ test "from camelCase" <|
                \_ -> Expect.equal "one_two_three_four_five" (recase ToSnake "oneTwoThreeFourFive")
            , test "from CONSTANT_CASE" <|
                \_ -> Expect.equal "one_two_three_four_five" (recase ToSnake "ONE_TWO_THREE_FOUR_FIVE")
            , test "from dot.case" <|
                \_ -> Expect.equal "one_two_three_four_five" (recase ToSnake "one.two.three.four.five")
            , test "from kebab-case" <|
                \_ -> Expect.equal "one_two_three_four_five" (recase ToSnake "one-two-three-four-five")
            , test "from PascalCase" <|
                \_ -> Expect.equal "one_two_three_four_five" (recase ToSnake "OneTwoThreeFourFive")
            , test "from Path/Case" <|
                \_ -> Expect.equal "one_two_three_four_five" (recase ToSnake "One/Two/Three/Four/Five")
            , test "from Sentence case" <|
                \_ -> Expect.equal "one_two_three_four_five" (recase ToSnake "One two three four five")
            , test "from snake_case" <|
                \_ -> Expect.equal "one_two_three_four_five" (recase ToSnake "one_two_three_four_five")
            , test "from Title Case" <|
                \_ -> Expect.equal "one_two_three_four_five" (recase ToSnake "One Two Three Four Five")
            ]
        ]
