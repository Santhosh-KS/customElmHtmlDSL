module Components.StyleHelpers exposing
    ( CSS(..)
    , CssObject
    , Unit
    , bds1
    , new
    , toString
    , withBackgroundColor
    , withBoxShadow
    , withColor
    , withFontFamily
    , withFontSize
    , withHeight
    , withMargin
    , withMaxWidth
    , withMinWidth
    , withPadding
    , withTableLayout
    , withUnitEm
    , withUnitPercent
    , withUnitPixel
    , withUnitRem
    , withWidth
    )


type CssObject msg
    = Settings
        { name : String
        , css : List (CSS msg)
        , unit : Unit
        }


type TableLayoutOptions
    = Auto
    | Fixed
    | Inherit
    | Initial
    | Revert
    | RevertLayer
    | Unset


tableLayoutToString : TableLayoutOptions -> String
tableLayoutToString layout =
    case layout of
        Auto ->
            "auto"

        Fixed ->
            "fixed"

        Inherit ->
            "inherit"

        Initial ->
            "initial"

        Revert ->
            "revert"

        RevertLayer ->
            "revert-layer"

        Unset ->
            "unset"


new : { name : String } -> CssObject msg
new props =
    Settings
        { name = props.name
        , css = []
        , unit = None
        }


bd : CssObject msg
bd =
    new { name = "body div stirng" }
        |> withColor "white"
        |> withBackgroundColor "black"


bdStr =
    toString bd


bodyDivStyle : String
bodyDivStyle =
    "margin:0; padding:0; min-width: 100%; background-color: #dde0e1;"


bds : CssObject msg
bds =
    new { name = "OOODiv" }
        |> withMargin None 0
        |> withPadding None 0
        |> withMinWidth Percent 100
        |> withBackgroundColor "#dde0e1"


bodyDivStyle1 : String
bodyDivStyle1 =
    "width: 100%; table-layout: fixed; background-color: #dde0e1; color:#3d3d3d; font-family: Arial, Helvetica, sans-serif; font-size:16px; margin:0 auto 40px;"


defaultBackgroundColor =
    "#dde0e1"


bluishGray =
    "#3d3d3d"


supportedFonts =
    [ "Arial", "Helvetica", "sans-serif" ]


defaultFontSize =
    16


bds1 : CssObject msg
bds1 =
    new { name = "OODiv" }
        |> withWidth Percent 100
        |> withTableLayout Fixed
        |> withBackgroundColor defaultBackgroundColor
        |> withColor bluishGray
        |> withFontFamily supportedFonts
        |> withFontSize Pixel defaultFontSize
        |> withMarginString "0 auto 40px"


bodyDivStyle2 : String
bodyDivStyle2 =
    "max-width: 600px; background-color: #fafdfe; color:#3d3d3d; font-family: Arial, Helvetica, sans-serif; font-size:16px; font-size=16px;box-shadow: 0 0 10px; rgba(0,0,0,0.2); margin:0 auto;"


bds2 =
    new { name = "ODiv" }
        |> withMaxWidth Pixel 600
        |> withBackgroundColor "#fafdfe"
        |> withColor bluishGray


bodyDivStyle3 : String
bodyDivStyle3 =
    "font-size:0; color: #fafdfe; mso-line-height-rule:exactly; line-height: 0; display:none; max-width: 0; max-width: 0; opacity: 0; overflow: hidden;mso-hide:all;"


bds3 =
    new { name = "IDiv" }
        |> withFontSize None 0
        |> withColor "#fafdfe"


type CSS msg
    = BackgroundColor String
    | BoxShadow String
    | Color String
    | FontFamily (List String)
    | FontSize Unit Int
    | Height Unit Int
    | Margin Unit Int
    | MarginStr String
    | MaxWidth Unit Int
    | MinWidth Unit Int
    | Padding Unit Int
    | TableLayout TableLayoutOptions
    | Width Unit Int


withBackgroundColor : String -> CssObject msg -> CssObject msg
withBackgroundColor val (Settings settings) =
    Settings { settings | css = List.append settings.css [ BackgroundColor val ] }


withBoxShadow : String -> CssObject msg -> CssObject msg
withBoxShadow val (Settings settings) =
    Settings { settings | css = List.append settings.css [ BoxShadow val ] }


withColor : String -> CssObject msg -> CssObject msg
withColor val (Settings settings) =
    Settings { settings | css = List.append settings.css [ Color val ] }


withFontFamily : List String -> CssObject msg -> CssObject msg
withFontFamily vals (Settings settings) =
    Settings { settings | css = List.append settings.css [ FontFamily vals ] }


withFontSize : Unit -> Int -> CssObject msg -> CssObject msg
withFontSize unit val (Settings settings) =
    Settings { settings | css = List.append settings.css [ FontSize unit val ] }


withHeight : Unit -> Int -> CssObject msg -> CssObject msg
withHeight unit val (Settings settings) =
    Settings { settings | css = List.append settings.css [ Height unit val ] }


withMargin : Unit -> Int -> CssObject msg -> CssObject msg
withMargin unit val (Settings settings) =
    Settings { settings | css = List.append settings.css [ Margin unit val ] }


withMarginString : String -> CssObject msg -> CssObject msg
withMarginString val (Settings settings) =
    Settings { settings | css = List.append settings.css [ MarginStr val ] }


withMaxWidth : Unit -> Int -> CssObject msg -> CssObject msg
withMaxWidth unit val (Settings settings) =
    Settings { settings | css = List.append settings.css [ MaxWidth unit val ] }


withMinWidth : Unit -> Int -> CssObject msg -> CssObject msg
withMinWidth unit val (Settings settings) =
    Settings { settings | css = List.append settings.css [ MinWidth unit val ] }


withPadding : Unit -> Int -> CssObject msg -> CssObject msg
withPadding unit val (Settings settings) =
    Settings { settings | css = List.append settings.css [ Padding unit val ] }


withTableLayout : TableLayoutOptions -> CssObject msg -> CssObject msg
withTableLayout option (Settings settings) =
    Settings { settings | css = List.append settings.css [ TableLayout option ] }


withWidth : Unit -> Int -> CssObject msg -> CssObject msg
withWidth unit val (Settings settings) =
    Settings { settings | css = List.append settings.css [ Width unit val ] }


type Unit
    = Em
    | None
    | Percent
    | Pixel
    | Rem


withUnitPixel : CssObject msg -> CssObject msg
withUnitPixel (Settings settings) =
    Settings { settings | unit = Pixel }


withUnitRem : CssObject msg -> CssObject msg
withUnitRem (Settings settings) =
    Settings { settings | unit = Rem }


withUnitEm : CssObject msg -> CssObject msg
withUnitEm (Settings settings) =
    Settings { settings | unit = Em }


withUnitPercent : CssObject msg -> CssObject msg
withUnitPercent (Settings settings) =
    Settings { settings | unit = Percent }


unitToString : Unit -> String
unitToString v =
    case v of
        Pixel ->
            "px"

        Rem ->
            "rem"

        Em ->
            "em"

        Percent ->
            "%"

        None ->
            ""


unitValString : Unit -> Int -> String
unitValString u v =
    String.fromInt v ++ unitToString u


toString : CssObject msg -> String
toString (Settings obj) =
    List.map keyValueToString (List.map toKeyValue obj.css) |> String.join " "


keyValueToString : { key : String, value : String } -> String
keyValueToString props =
    props.key ++ ":" ++ props.value ++ ";"


toKeyValue : CSS msg -> { key : String, value : String }
toKeyValue css =
    case css of
        BackgroundColor val ->
            { key = "background-color", value = val }

        BoxShadow val ->
            { key = "box-shadow", value = val }

        Color val ->
            { key = "color", value = val }

        FontFamily vals ->
            { key = "font-family", value = vals |> String.join ", " }

        FontSize unit val ->
            { key = "font-size", value = unitValString unit val }

        Height unit val ->
            { key = "height", value = unitValString unit val }

        Margin unit val ->
            { key = "margin", value = unitValString unit val }

        MarginStr val ->
            { key = "margin", value = val }

        MaxWidth unit val ->
            { key = "max-width", value = unitValString unit val }

        MinWidth unit val ->
            { key = "min-width", value = unitValString unit val }

        Padding unit val ->
            { key = "padding", value = unitValString unit val }

        TableLayout val ->
            { key = "table-layout", value = val |> tableLayoutToString }

        Width unit val ->
            { key = "width", value = unitValString unit val }
