module TitleTests exposing (suite)

import Expect exposing (Expectation)
import ReCase exposing (..)
import Test exposing (..)


suite : Test
suite =
    describe "ReCase tests"
        [ describe "Test conversions to Title Case"
            [ test "from camelCase" <|
                \_ -> Expect.equal "Title Case" (recase ToTitle "titleCase")
            , test "from CONSTANT_CASE" <|
                \_ -> Expect.equal "Title Case" (recase ToTitle "TITLE_CASE")
            , test "from dot.case" <|
                \_ -> Expect.equal "Title Case" (recase ToTitle "title.case")
            , test "from kebab-case" <|
                \_ -> Expect.equal "Title Case" (recase ToTitle "title-case")
            , test "from PascalCase" <|
                \_ -> Expect.equal "Title Case" (recase ToTitle "TitleCase")
            , test "from Path/Case" <|
                \_ -> Expect.equal "Title Case" (recase ToTitle "Title/Case")
            , test "from Sentence case" <|
                \_ -> Expect.equal "Title Case" (recase ToTitle "Title case")
            , test "from snake_case" <|
                \_ -> Expect.equal "Title Case" (recase ToTitle "title_case")
            , test "from Title Case" <|
                \_ -> Expect.equal "Title Case" (recase ToTitle "Title Case")
            ]
        ]
