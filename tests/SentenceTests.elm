module SentenceTests exposing (suite)

import Expect exposing (Expectation)
import ReCase exposing (ReCase(..), recase)
import Test exposing (Test, describe, test)


suite : Test
suite =
    describe "ReCase tests"
        [ describe "Test conversions to Sentence case"
            [ test "from camelCase" <|
                \_ -> Expect.equal "Sentence case" (recase ToSentence "sentenceCase")
            , test "from camelCase2" <|
                \_ -> Expect.equal "One two three four five" (recase ToSentence "oneTwoThreeFourFive")
            , test "from CONSTANT_CASE" <|
                \_ -> Expect.equal "Sentence case" (recase ToSentence "SENTENCE_CASE")
            , test "from CONSTANT_CASE2" <|
                \_ -> Expect.equal "One two three four five" (recase ToSentence "ONE_TWO_THREE_FOUR_FIVE")
            , test "from dot.case" <|
                \_ -> Expect.equal "Sentence case" (recase ToSentence "sentence.case")
            , test "from dot.case2" <|
                \_ -> Expect.equal "One two three four five" (recase ToSentence "one.two.three.four.five")
            , test "from kebab-case" <|
                \_ -> Expect.equal "Sentence case" (recase ToSentence "sentence-case")
            , test "from kebab-case2" <|
                \_ -> Expect.equal "One two three four five" (recase ToSentence "one-two-three-four-five")
            , test "from PascalCase" <|
                \_ -> Expect.equal "Sentence case" (recase ToSentence "SentenceCase")
            , test "from PascalCase2" <|
                \_ -> Expect.equal "One two three four five" (recase ToSentence "OneTwoThreeFourFive")
            , test "from Path/Case" <|
                \_ -> Expect.equal "Sentence case" (recase ToSentence "Sentence/Case")
            , test "from Path/Case2" <|
                \_ -> Expect.equal "One two three four five" (recase ToSentence "One/Two/Three/Four/Five")
            , test "from Sentence case" <|
                \_ -> Expect.equal "Sentence case" (recase ToSentence "Sentence case")
            , test "from Sentence case2" <|
                \_ -> Expect.equal "One two three four five" (recase ToSentence "One two three four five")
            , test "from snake_case" <|
                \_ -> Expect.equal "Sentence case" (recase ToSentence "sentence_case")
            , test "from snake_case2" <|
                \_ -> Expect.equal "One two three four five" (recase ToSentence "one_two_three_four_five")
            , test "from Title Case" <|
                \_ -> Expect.equal "Sentence case" (recase ToSentence "Sentence Case")
            , test "from Title Case2" <|
                \_ -> Expect.equal "One two three four five" (recase ToSentence "One Two Three Four Five")
            ]
        ]
