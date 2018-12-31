module ReCase exposing
    ( CamelCase
    , ConstantCase
    , DotCase
    , KebabCase
    , PascalCase
    , PathCase
    , ReCase(..)
    , SentenceCase
    , SnakeCase
    , TitleCase
    , fromCamel
    , fromConstant
    , fromDot
    , fromKebab
    , fromPascal
    , fromPath
    , fromSentence
    , fromSnake
    , fromTitle
    , recase
    , toCamel
    , toConstant
    , toDot
    , toKebab
    , toPascal
    , toPath
    , toSentence
    , toSnake
    , toTitle
    )

{-| Convert a string from a case to any other case.


## Generic API

@docs ReCase recase


## More Explicit(ly) Type(d) API

@docs CamelCase fromCamel toCamel ConstantCase fromConstant toConstant DotCase fromDot toDot KebabCase fromKebab toKebab PascalCase fromPascal toPascal PathCase fromPath toPath SentenceCase fromSentence toSentence SnakeCase fromSnake toSnake TitleCase fromTitle toTitle

-}

import Regex



-- GENERIC API


type ReCase
    = ToCamel
    | ToConstant
    | ToDot
    | ToKebab
    | ToPascal
    | ToPath
    | ToSentence
    | ToSnake
    | ToTitle


recase : ReCase -> String -> String
recase rc src =
    case rc of
        ToCamel ->
            toCamel src |> fromCamel

        ToConstant ->
            toConstant src |> fromConstant

        ToDot ->
            toDot src |> fromDot

        ToKebab ->
            toKebab src |> fromKebab

        ToPascal ->
            toPascal src |> fromPascal

        ToPath ->
            toPath src |> fromPath

        ToSentence ->
            toSentence src |> fromSentence

        ToSnake ->
            toSnake src |> fromSnake

        ToTitle ->
            toTitle src |> fromTitle



-- MORE EXPLICIT(ly) TYPE(d) API


{-| A camelCase `String`.
-}
type CamelCase
    = CamelCase String


{-| Convert from the specific `CamelCase` type to the generic `String` type.
-}
fromCamel : CamelCase -> String
fromCamel (CamelCase s) =
    s


{-| Convert `String` to `CamelCase`.
-}
toCamel : String -> CamelCase
toCamel src =
    if String.isEmpty src then
        CamelCase src

    else
        let
            mr1 =
                Regex.fromString "^[_\\.\\-/\\s]+"

            mr2 =
                Regex.fromString "([a-zA-Z]+)([A-Z][a-z\\d]+)"

            mr3 =
                Regex.fromString "[_\\.\\-/\\s]+(\\w|$)"
        in
        Maybe.map3
            (\r1 r2 r3 ->
                src
                    |> String.trim
                    |> Regex.replace r1 (\r -> "")
                    |> Regex.replace r2
                        (\r ->
                            case r.submatches of
                                fst :: snd :: _ ->
                                    Maybe.map2 (\f s -> f ++ "-" ++ s) fst snd
                                        |> Maybe.withDefault r.match

                                _ ->
                                    r.match
                        )
                    |> String.toLower
                    |> Regex.replace r3
                        (\r ->
                            case r.submatches of
                                fst :: _ ->
                                    Maybe.map String.toUpper fst
                                        |> Maybe.withDefault r.match

                                _ ->
                                    r.match
                        )
                    |> CamelCase
            )
            mr1
            mr2
            mr3
            |> Maybe.withDefault (CamelCase "")


{-| A CONSTANT\_CASE `String`.
-}
type ConstantCase
    = ConstantCase String


{-| Convert from the specific `ConstantCase` type to the generic `String` type.
-}
fromConstant : ConstantCase -> String
fromConstant (ConstantCase s) =
    s


{-| Convert `String` to `ConstantCase`.
-}
toConstant : String -> ConstantCase
toConstant s =
    ConstantCase s


{-| A dot.case `String`.
-}
type DotCase
    = DotCase String


{-| Convert from the specific `DotCase` type to the generic `String` type.
-}
fromDot : DotCase -> String
fromDot (DotCase s) =
    s


{-| Convert `String` to `DotCase`.
-}
toDot : String -> DotCase
toDot s =
    recase ToSnake s
        |> String.replace "_" "."
        |> DotCase


{-| A kebab-case `String`.
-}
type KebabCase
    = KebabCase String


{-| Convert from the specific `KebabCase` type to the generic `String` type.
-}
fromKebab : KebabCase -> String
fromKebab (KebabCase s) =
    s


{-| Convert `String` to `KebabCase`.
-}
toKebab : String -> KebabCase
toKebab s =
    recase ToSnake s
        |> String.replace "_" "-"
        |> KebabCase


{-| A PascalCase aka UpperCase `String`.
-}
type PascalCase
    = PascalCase String


{-| Convert from the specific `PascalCase` type to the generic `String` type.
-}
fromPascal : PascalCase -> String
fromPascal (PascalCase s) =
    s


{-| Convert `String` to `PacalCase`.
-}
toPascal : String -> PascalCase
toPascal s =
    let
        cc =
            recase ToCamel s
    in
    (String.left 1 cc |> String.toUpper)
        ++ String.dropLeft 1 cc
        |> PascalCase


{-| A path/case `String`.
Conversions to path/case are case-sensitive, that is input's case is not changed,
only the path separator / (slash) is inserted.
-}
type PathCase
    = PathCase String


{-| Convert from the specific `PathCase` type to the generic `String` type.
-}
fromPath : PathCase -> String
fromPath (PathCase s) =
    s


{-| Convert `String` to `PathCase`.
-}
toPath : String -> PathCase
toPath src =
    if String.isEmpty src then
        PathCase src

    else
        let
            mr1 =
                Regex.fromString "[\\s\\.\\-_]"

            mr2 =
                Regex.fromString "([a-z\\d])([A-Z])"

            mr3 =
                Regex.fromString "([A-Z]+)([A-Z][a-z\\d]+)"

            ps =
                "/"

            subsep r =
                case r.submatches of
                    fst :: snd :: _ ->
                        Maybe.map2 (\f s -> f ++ ps ++ s) fst snd
                            |> Maybe.withDefault r.match

                    _ ->
                        r.match
        in
        Maybe.map3
            (\r1 r2 r3 ->
                src
                    |> String.trim
                    |> Regex.replace r1 (\_ -> ps)
                    |> Regex.replace r2 subsep
                    |> Regex.replace r3 subsep
                    |> PathCase
            )
            mr1
            mr2
            mr3
            |> Maybe.withDefault (PathCase "")


{-| A Sentence case `String`.
-}
type SentenceCase
    = SentenceCase String


{-| Convert from the specific `SentenceCase` type to the generic `String` type.
-}
fromSentence : SentenceCase -> String
fromSentence (SentenceCase s) =
    s


{-| Convert `String` to `SentenceCase`.
-}
toSentence : String -> SentenceCase
toSentence s =
    recase ToSnake s
        |> String.replace "_" " "
        |> (\str -> (String.left 1 str |> String.toUpper) ++ String.dropLeft 1 str)
        |> SentenceCase


{-| A snake\_case `String`.
-}
type SnakeCase
    = SnakeCase String


{-| Convert from the specific `SnakeCase` type to the generic `String` type.
-}
fromSnake : SnakeCase -> String
fromSnake (SnakeCase s) =
    s


{-| Convert `String` to `SnakeCase`.
-}
toSnake : String -> SnakeCase
toSnake src =
    if String.isEmpty src then
        SnakeCase src

    else
        let
            mr1 =
                Regex.fromString "[^a-zA-Z0-9]+"

            mr2 =
                Regex.fromString "[\\s\\.\\-]"

            mr3 =
                Regex.fromString "([a-z\\d])([A-Z])"

            mr4 =
                Regex.fromString "([A-Z]+)([A-Z][a-z\\d]+)"

            sep =
                "_"

            subsep r =
                case r.submatches of
                    fst :: snd :: _ ->
                        Maybe.map2 (\f s -> f ++ sep ++ s) fst snd
                            |> Maybe.withDefault r.match

                    _ ->
                        r.match
        in
        Maybe.map4
            (\r1 r2 r3 r4 ->
                src
                    |> Regex.split r1
                    |> List.map
                        (\word ->
                            word
                                |> Regex.replace r2 (\_ -> sep)
                                |> Regex.replace r3 subsep
                                |> Regex.replace r4 subsep
                        )
                    |> String.join sep
                    |> String.toLower
                    |> SnakeCase
            )
            mr1
            mr2
            mr3
            mr4
            |> Maybe.withDefault (SnakeCase "")


{-| A Title Case `String`.
-}
type TitleCase
    = TitleCase String


{-| Convert from the specific `TitleCase` type to the generic `String` type.
-}
fromTitle : TitleCase -> String
fromTitle (TitleCase s) =
    s


{-| Convert `String` to `TitleCase`.
-}
toTitle : String -> TitleCase
toTitle s =
    recase ToSnake s
        |> String.split "_"
        |> List.map (\w -> (String.left 1 w |> String.toUpper) ++ String.dropLeft 1 w)
        |> String.join " "
        |> TitleCase
