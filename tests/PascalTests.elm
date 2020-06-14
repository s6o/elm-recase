module PascalTests exposing (suite)

import Expect exposing (Expectation)
import ReCase exposing (ReCase(..), recase)
import Test exposing (Test, describe, test)


suite : Test
suite =
    describe "ReCase tests"
        [ describe "Test conversions to PascalCase"
            [ test "from camelCase" <|
                \_ -> Expect.equal "PascalCase" (recase ToPascal "pascalCase")
            , test "from camelCase2" <|
                \_ -> Expect.equal "OneTwoThreeFourFive" (recase ToPascal "oneTwoThreeFourFive")
            , test "from CONSTANT_CASE" <|
                \_ -> Expect.equal "PascalCase" (recase ToPascal "PASCAL_CASE")
            , test "from CONSTANT_CASE2" <|
                \_ -> Expect.equal "OneTwoThreeFourFive" (recase ToPascal "ONE_TWO_THREE_FOUR_FIVE")
            , test "from dot.case" <|
                \_ -> Expect.equal "PascalCase" (recase ToPascal "pascal.case")
            , test "from dot.case2" <|
                \_ -> Expect.equal "OneTwoThreeFourFive" (recase ToPascal "one.two.three.four.five")
            , test "from kebab-case" <|
                \_ -> Expect.equal "PascalCase" (recase ToPascal "pascal-case")
            , test "from kebab-case2" <|
                \_ -> Expect.equal "OneTwoThreeFourFive" (recase ToPascal "one-two-three-four-five")
            , test "from PascalCase" <|
                \_ -> Expect.equal "PascalCase" (recase ToPascal "PascalCase")
            , test "from PascalCase2" <|
                \_ -> Expect.equal "OneTwoThreeFourFive" (recase ToPascal "OneTwoThreeFourFive")
            , test "from Path/Case" <|
                \_ -> Expect.equal "PascalCase" (recase ToPascal "Pascal/Case")
            , test "from Path/Case2" <|
                \_ -> Expect.equal "OneTwoThreeFourFive" (recase ToPascal "One/Two/Three/Four/Five")
            , test "from Sentence case" <|
                \_ -> Expect.equal "PascalCase" (recase ToPascal "Pascal case")
            , test "from Sentence case2" <|
                \_ -> Expect.equal "OneTwoThreeFourFive" (recase ToPascal "One two three four five")
            , test "from snake_case" <|
                \_ -> Expect.equal "PascalCase" (recase ToPascal "pascal_case")
            , test "from snake_case2" <|
                \_ -> Expect.equal "OneTwoThreeFourFive" (recase ToPascal "one_two_three_four_five")
            , test "from Title Case" <|
                \_ -> Expect.equal "PascalCase" (recase ToPascal "Pascal Case")
            , test "from Title Case2" <|
                \_ -> Expect.equal "OneTwoThreeFourFive" (recase ToPascal "One Two Three Four Five")
            ]
        ]
