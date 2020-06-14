module ConstantTests exposing (suite)

import Expect exposing (Expectation)
import ReCase exposing (ReCase(..), recase)
import Test exposing (Test, describe, test)


suite : Test
suite =
    describe "ReCase tests"
        [ describe "Test conversions to CONSTANT_CASE"
            [ test "from camelCase" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "constantCase")
            , test "from camelCase2" <|
                \_ -> Expect.equal "ONE_TWO_THREE_FOUR_FIVE" (recase ToConstant "oneTwoThreeFourFive")
            , test "from CONSTANT_CASE" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "CONSTANT_CASE")
            , test "from CONSTANT_CASE2" <|
                \_ -> Expect.equal "ONE_TWO_THREE_FOUR_FIVE" (recase ToConstant "ONE_TWO_THREE_FOUR_FIVE")
            , test "from dot.case" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "constant.case")
            , test "from dot.case2" <|
                \_ -> Expect.equal "ONE_TWO_THREE_FOUR_FIVE" (recase ToConstant "one.two.three.four.five")
            , test "from kebab-case" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "constant-case")
            , test "from kebab-case2" <|
                \_ -> Expect.equal "ONE_TWO_THREE_FOUR_FIVE" (recase ToConstant "one-two-three-four-five")
            , test "from PascalCase" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "ConstantCase")
            , test "from PascalCase2" <|
                \_ -> Expect.equal "ONE_TWO_THREE_FOUR_FIVE" (recase ToConstant "OneTwoThreeFourFive")
            , test "from Path/Case" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "Constant/Case")
            , test "from Path/Case2" <|
                \_ -> Expect.equal "ONE_TWO_THREE_FOUR_FIVE" (recase ToConstant "One/Two/Three/Four/Five")
            , test "from Sentence case" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "Constant case")
            , test "from Sentence case2" <|
                \_ -> Expect.equal "ONE_TWO_THREE_FOUR_FIVE" (recase ToConstant "One two three four five")
            , test "from snake_case" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "constant_case")
            , test "from snake_case2" <|
                \_ -> Expect.equal "ONE_TWO_THREE_FOUR_FIVE" (recase ToConstant "one_two_three_four_five")
            , test "from Title Case" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "Constant Case")
            , test "from Title Case2" <|
                \_ -> Expect.equal "ONE_TWO_THREE_FOUR_FIVE" (recase ToConstant "One Two Three Four Five")
            ]
        ]
