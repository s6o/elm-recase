module PascalTests exposing (suite)

import Expect exposing (Expectation)
import ReCase exposing (..)
import Test exposing (..)


suite : Test
suite =
    describe "ReCase tests"
        [ describe "Test conversions to PascalCase"
            [ test "from camelCase" <|
                \_ -> Expect.equal "PascalCase" (recase ToPascal "pascalCase")
            , test "from CONSTANT_CASE" <|
                \_ -> Expect.equal "PascalCase" (recase ToPascal "PASCAL_CASE")
            , test "from dot.case" <|
                \_ -> Expect.equal "PascalCase" (recase ToPascal "pascal.case")
            , test "from kebab-case" <|
                \_ -> Expect.equal "PascalCase" (recase ToPascal "pascal-case")
            , test "from PascalCase" <|
                \_ -> Expect.equal "PascalCase" (recase ToPascal "PascalCase")
            , test "from Path/Case" <|
                \_ -> Expect.equal "PascalCase" (recase ToPascal "Pascal/Case")
            , test "from Sentence case" <|
                \_ -> Expect.equal "PascalCase" (recase ToPascal "Pascal case")
            , test "from snake_case" <|
                \_ -> Expect.equal "PascalCase" (recase ToPascal "pascal_case")
            , test "from Title Case" <|
                \_ -> Expect.equal "PascalCase" (recase ToPascal "Pascal Case")
            ]
        ]
