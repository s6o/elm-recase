module PathTests exposing (suite)

import Expect exposing (Expectation)
import ReCase exposing (..)
import Test exposing (..)


suite : Test
suite =
    describe "ReCase tests"
        [ describe "Test conversions to Path/Case"
            [ test "from camelCase" <|
                \_ -> Expect.equal "Path/Case" (recase ToPath "pathCase")
            , test "from CONSTANT_CASE" <|
                \_ -> Expect.equal "Path/Case" (recase ToPath "PATH_CASE")
            , test "from dot.case" <|
                \_ -> Expect.equal "Path/Case" (recase ToPath "path.case")
            , test "from kebab-case" <|
                \_ -> Expect.equal "Path/Case" (recase ToPath "path-case")
            , test "from PascalCase" <|
                \_ -> Expect.equal "Path/Case" (recase ToPath "PathCase")
            , test "from Path/Case" <|
                \_ -> Expect.equal "Path/Case" (recase ToPath "Path/Case")
            , test "from Sentence case" <|
                \_ -> Expect.equal "Path/Case" (recase ToPath "Path case")
            , test "from snake_case" <|
                \_ -> Expect.equal "Path/Case" (recase ToPath "path_case")
            , test "from Title Case" <|
                \_ -> Expect.equal "Path/Case" (recase ToPath "Path Case")
            ]
        ]
