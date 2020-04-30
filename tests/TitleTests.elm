module TitleTests exposing (suite)

import Expect exposing (Expectation)
import ReCase exposing (ReCase(..), recase)
import Test exposing (Test, describe, test)


suite : Test
suite =
    describe "ReCase tests"
        [ describe "Test conversions to Title Case"
            [ test "from camelCase" <|
                \_ -> Expect.equal "One Two Three Four Five" (recase ToTitle "oneTwoThreeFourFive")
            , test "from CONSTANT_CASE" <|
                \_ -> Expect.equal "One Two Three Four Five" (recase ToTitle "ONE_TWO_THREE_FOUR_FIVE")
            , test "from dot.case" <|
                \_ -> Expect.equal "One Two Three Four Five" (recase ToTitle "one.two.three.four.five")
            , test "from kebab-case" <|
                \_ -> Expect.equal "One Two Three Four Five" (recase ToTitle "one-two-three-four-five")
            , test "from PascalCase" <|
                \_ -> Expect.equal "One Two Three Four Five" (recase ToTitle "OneTwoThreeFourFive")
            , test "from Path/Case" <|
                \_ -> Expect.equal "One Two Three Four Five" (recase ToTitle "One/Two/Three/Four/Five")
            , test "from Sentence case" <|
                \_ -> Expect.equal "One Two Three Four Five" (recase ToTitle "One two three four five")
            , test "from snake_case" <|
                \_ -> Expect.equal "One Two Three Four Five" (recase ToTitle "one_two_three_four_five")
            , test "from Title Case" <|
                \_ -> Expect.equal "One Two Three Four Five" (recase ToTitle "One Two Three Four Five")
            ]
        ]
