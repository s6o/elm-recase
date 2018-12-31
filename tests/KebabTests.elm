module KebabTests exposing (suite)

import Expect exposing (Expectation)
import ReCase exposing (..)
import Test exposing (..)


suite : Test
suite =
    describe "ReCase tests"
        [ describe "Test conversions to kebab-case"
            [ test "from camelCase" <|
                \_ -> Expect.equal "kebab-case" (recase ToKebab "kebabCase")
            , test "from CONSTANT_CASE" <|
                \_ -> Expect.equal "kebab-case" (recase ToKebab "KEBAB_CASE")
            , test "from dot.case" <|
                \_ -> Expect.equal "kebab-case" (recase ToKebab "kebab.case")
            , test "from kebab-case" <|
                \_ -> Expect.equal "kebab-case" (recase ToKebab "kebab-case")
            , test "from PascalCase" <|
                \_ -> Expect.equal "kebab-case" (recase ToKebab "KebabCase")
            , test "from Path/Case" <|
                \_ -> Expect.equal "kebab-case" (recase ToKebab "Kebab/Case")
            , test "from Sentence case" <|
                \_ -> Expect.equal "kebab-case" (recase ToKebab "Kebab case")
            , test "from snake_case" <|
                \_ -> Expect.equal "kebab-case" (recase ToKebab "kebab_case")
            , test "from Title Case" <|
                \_ -> Expect.equal "kebab-case" (recase ToKebab "Kebab Case")
            ]
        ]
