module Tests exposing (suite)

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

        --
        , describe "Test conversions to CONSTANT_CASE"
            [ test "from camelCase" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "constantCase")
            , test "from CONSTANT_CASE" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "CONSTANT_CASE")
            , test "from dot.case" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "constant.case")
            , test "from kebab-case" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "constant-case")
            , test "from PascalCase" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "ConstantCase")
            , test "from Path/Case" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "Constant/Case")
            , test "from Sentence case" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "Constant case")
            , test "from snake_case" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "constant_case")
            , test "from Title Case" <|
                \_ -> Expect.equal "CONSTANT_CASE" (recase ToConstant "Constant Case")
            ]

        --
        , describe "Test conversions to dot.case"
            [ test "from camelCase" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "dotCase")
            , test "from CONSTANT_CASE" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "DOT_CASE")
            , test "from dot.case" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "dot.case")
            , test "from kebab-case" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "dot-case")
            , test "from PascalCase" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "DotCase")
            , test "from Path/Case" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "Dot/Case")
            , test "from Sentence case" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "Dot case")
            , test "from snake_case" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "dot_case")
            , test "from Title Case" <|
                \_ -> Expect.equal "dot.case" (recase ToDot "Dot Case")
            ]

        --
        , describe "Test conversions to kebab-case"
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

        --
        , describe "Test conversions to PascalCase"
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

        --
        , describe "Test conversions to Path/Case"
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

        --
        , describe "Test conversions to Sentence case"
            [ test "from camelCase" <|
                \_ -> Expect.equal "Sentence case" (recase ToSentence "sentenceCase")
            , test "from CONSTANT_CASE" <|
                \_ -> Expect.equal "Sentence case" (recase ToSentence "SENTENCE_CASE")
            , test "from dot.case" <|
                \_ -> Expect.equal "Sentence case" (recase ToSentence "sentence.case")
            , test "from kebab-case" <|
                \_ -> Expect.equal "Sentence case" (recase ToSentence "sentence-case")
            , test "from PascalCase" <|
                \_ -> Expect.equal "Sentence case" (recase ToSentence "SentenceCase")
            , test "from Path/Case" <|
                \_ -> Expect.equal "Sentence case" (recase ToSentence "Sentence/Case")
            , test "from Sentence case" <|
                \_ -> Expect.equal "Sentence case" (recase ToSentence "Sentence case")
            , test "from snake_case" <|
                \_ -> Expect.equal "Sentence case" (recase ToSentence "sentence_case")
            , test "from Title Case" <|
                \_ -> Expect.equal "Sentence case" (recase ToSentence "Sentence Case")
            ]

        --
        , describe "Test conversions to snake_case"
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

        --
        , describe "Test conversions to Title Case"
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
