module SnakeTests exposing (suite)

import Expect exposing (Expectation)
import ReCase exposing (..)
import Test exposing (..)


suite : Test
suite =
    describe "ReCase tests"
        [ describe "Test conversions to snake_case"
            [ test "from camelCase" <|
                \_ -> Expect.equal "snake_case" (recase ToSnake "snakeCase")
            , test "from CONSTANT_CASE" <|
                \_ -> Expect.equal "snake_case" (recase ToSnake "SNAKE_CASE")
            , test "from dot.case" <|
                \_ -> Expect.equal "snake_case" (recase ToSnake "snake.case")
            , test "from kebab-case" <|
                \_ -> Expect.equal "snake_case" (recase ToSnake "snake-case")
            , test "from PascalCase" <|
                \_ -> Expect.equal "snake_case" (recase ToSnake "SnakeCase")
            , test "from Path/Case" <|
                \_ -> Expect.equal "snake_case" (recase ToSnake "Snake/Case")
            , test "from Sentence case" <|
                \_ -> Expect.equal "snake_case" (recase ToSnake "Snake case")
            , test "from snake_case" <|
                \_ -> Expect.equal "snake_case" (recase ToSnake "snake_case")
            , test "from Title Case" <|
                \_ -> Expect.equal "snake_case" (recase ToSnake "Snake Case")
            ]
        ]
