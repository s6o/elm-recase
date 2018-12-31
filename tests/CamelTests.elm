module CamelTests exposing (suite)

import Expect exposing (Expectation)
import ReCase exposing (..)
import Test exposing (..)


suite : Test
suite =
    describe "ReCase tests"
        [ describe "Test conversions to camelCase"
            [ test "from camelCase" <|
                \_ -> Expect.equal "camelCase" (recase ToCamel "camelCase")
            , test "from CONSTANT_CASE" <|
                \_ -> Expect.equal "camelCase" (recase ToCamel "CAMEL_CASE")
            , test "from dot.case" <|
                \_ -> Expect.equal "camelCase" (recase ToCamel "camel.case")
            , test "from kebab-case" <|
                \_ -> Expect.equal "camelCase" (recase ToCamel "camel-case")
            , test "from PascalCase" <|
                \_ -> Expect.equal "camelCase" (recase ToCamel "CamelCase")
            , test "from Path/Case" <|
                \_ -> Expect.equal "camelCase" (recase ToCamel "Camel/Case")
            , test "from Sentence case" <|
                \_ -> Expect.equal "camelCase" (recase ToCamel "Camel case")
            , test "from snake_case" <|
                \_ -> Expect.equal "camelCase" (recase ToCamel "camel_case")
            , test "from Title Case" <|
                \_ -> Expect.equal "camelCase" (recase ToCamel "Camel Case")
            ]
        ]
