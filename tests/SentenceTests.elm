module SentenceTests exposing (suite)

import Expect exposing (Expectation)
import ReCase exposing (..)
import Test exposing (..)


suite : Test
suite =
    describe "ReCase tests"
        [ describe "Test conversions to Sentence case"
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
        ]
