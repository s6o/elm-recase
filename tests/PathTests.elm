module PathTests exposing (suite)

import Expect exposing (Expectation)
import ReCase exposing (ReCase(..), recase)
import Test exposing (Test, describe, test)


suite : Test
suite =
    describe "ReCase tests"
        [ describe "Test conversions to Path/Case"
            [ test "from camelCase" <|
                \_ -> Expect.equal "one/Two/Three/Four/Five" (recase ToPath "oneTwoThreeFourFive")
            , test "from CONSTANT_CASE" <|
                \_ -> Expect.equal "ONE/TWO/THREE/FOUR/FIVE" (recase ToPath "ONE_TWO_THREE_FOUR_FIVE")
            , test "from dot.case" <|
                \_ -> Expect.equal "one/two/three/four/five" (recase ToPath "one.two.three.four.five")
            , test "from kebab-case" <|
                \_ -> Expect.equal "one/two/three/four/five" (recase ToPath "one-two-three-four-five")
            , test "from PascalCase" <|
                \_ -> Expect.equal "One/Two/Three/Four/Five" (recase ToPath "OneTwoThreeFourFive")
            , test "from Path/Case" <|
                \_ -> Expect.equal "One/Two/Three/Four/Five" (recase ToPath "One/Two/Three/Four/Five")
            , test "from Sentence case" <|
                \_ -> Expect.equal "One/two/three/four/five" (recase ToPath "One two three four five")
            , test "from snake_case" <|
                \_ -> Expect.equal "one/two/three/four/five" (recase ToPath "one_two_three_four_five")
            , test "from Title Case" <|
                \_ -> Expect.equal "One/Two/Three/Four/Five" (recase ToPath "One Two Three Four Five")
            ]
        ]
