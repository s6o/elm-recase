module KebabTests exposing (suite)

import Expect exposing (Expectation)
import ReCase exposing (ReCase(..), recase)
import Test exposing (Test, describe, test)


suite : Test
suite =
    describe "ReCase tests"
        [ describe "Test conversions to kebab-case"
            [ test "from camelCase" <|
                \_ -> Expect.equal "kebab-case" (recase ToKebab "kebabCase")
            , test "from camelCase2" <|
                \_ -> Expect.equal "one-two-three-four-five" (recase ToKebab "oneTwoThreeFourFive")
            , test "from CONSTANT_CASE" <|
                \_ -> Expect.equal "kebab-case" (recase ToKebab "KEBAB_CASE")
            , test "from CONSTANT_CASE2" <|
                \_ -> Expect.equal "one-two-three-four-five" (recase ToKebab "ONE_TWO_THREE_FOUR_FIVE")
            , test "from dot.case" <|
                \_ -> Expect.equal "kebab-case" (recase ToKebab "kebab.case")
            , test "from dot.case2" <|
                \_ -> Expect.equal "one-two-three-four-five" (recase ToKebab "one.two.three.four.five")
            , test "from kebab-case" <|
                \_ -> Expect.equal "kebab-case" (recase ToKebab "kebab-case")
            , test "from kebab-case2" <|
                \_ -> Expect.equal "one-two-three-four-five" (recase ToKebab "one-two-three-four-five")
            , test "from PascalCase" <|
                \_ -> Expect.equal "kebab-case" (recase ToKebab "KebabCase")
            , test "from PascalCase2" <|
                \_ -> Expect.equal "one-two-three-four-five" (recase ToKebab "OneTwoThreeFourFive")
            , test "from Path/Case" <|
                \_ -> Expect.equal "kebab-case" (recase ToKebab "Kebab/Case")
            , test "from Path/Case2" <|
                \_ -> Expect.equal "one-two-three-four-five" (recase ToKebab "One/Two/Three/Four/Five")
            , test "from Sentence case" <|
                \_ -> Expect.equal "kebab-case" (recase ToKebab "Kebab case")
            , test "from Sentence case2" <|
                \_ -> Expect.equal "one-two-three-four-five" (recase ToKebab "One two three four five")
            , test "from snake_case" <|
                \_ -> Expect.equal "kebab-case" (recase ToKebab "kebab_case")
            , test "from snake_case2" <|
                \_ -> Expect.equal "one-two-three-four-five" (recase ToKebab "one_two_three_four_five")
            , test "from Title Case" <|
                \_ -> Expect.equal "kebab-case" (recase ToKebab "Kebab Case")
            , test "from Title Case2" <|
                \_ -> Expect.equal "one-two-three-four-five" (recase ToKebab "One Two Three Four Five")
            ]
        ]
