module Components.StyleHelpers exposing
    ( BorderCollapseOptions(..)
    , CSS(..)
    , CssObject
    , DisplayOptions(..)
    , OverflowOptions(..)
    , TextAlignOptions(..)
    , Unit(..)
    , bds1
    , new
    , supportedFonts
    , toString
    , withBackgroundColor
    , withBorder
    , withBorderCollapse
    , withBorderSpacing
    , withBoxShadow
    , withColor
    , withDisplay
    , withFontFamily
    , withFontSize
    , withHeight
    , withLineHeight
    , withMargin
    , withMarginString
    , withMaxWidth
    , withMinWidth
    , withMsoHide
    , withMsoLineHeightRule
    , withOpacity
    , withOverflow
    , withPadding
    , withPaddingStr
    , withTableLayout
    , withTextAlign
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


new : { name : String } -> CssObject msg
new props =
    Settings
        { name = props.name
        , css = []
        , unit = None
        }


type CSS msg
    = BackgroundColor String
    | BoxShadow String
    | Border Unit Float
    | Color String
    | FontFamily (List String)
    | FontSize Unit Float
    | Height Unit Float
    | Margin Unit Float
    | MarginStr String
    | MaxWidth Unit Float
    | MinWidth Unit Float
    | Padding Unit Float
    | PaddingStr String
    | TableLayout TableLayoutOptions
    | Width Unit Float
    | BorderSpacing Unit Float
    | BorderCollapse BorderCollapseOptions
    | LineHeight Unit Float
    | Display DisplayOptions
    | MsoLineHeightRule String
    | Opacity Float
    | Overflow OverflowOptions
    | MsoHide String
    | TextAlign TextAlignOptions


type TextAlignOptions
    = Start
    | End
    | Center
    | Justify


textAlignOptionsToString : TextAlignOptions -> String
textAlignOptionsToString v =
    case v of
        Start ->
            "start"

        End ->
            "end"

        Center ->
            "center"

        Justify ->
            "justify"


type Orientiation
    = Top
    | Right
    | Bottom
    | Left


withBorder : Unit -> Float -> CssObject msg -> CssObject msg
withBorder unit val (Settings settings) =
    Settings { settings | css = List.append settings.css [ Border unit val ] }


withTextAlign : TextAlignOptions -> CssObject msg -> CssObject msg
withTextAlign val (Settings settings) =
    Settings { settings | css = List.append settings.css [ TextAlign val ] }


withMsoHide : String -> CssObject msg -> CssObject msg
withMsoHide val (Settings settings) =
    Settings { settings | css = List.append settings.css [ MsoHide val ] }


withOverflow : OverflowOptions -> CssObject msg -> CssObject msg
withOverflow val (Settings settings) =
    Settings { settings | css = List.append settings.css [ Overflow val ] }


withOpacity : Float -> CssObject msg -> CssObject msg
withOpacity val (Settings settings) =
    Settings { settings | css = List.append settings.css [ Opacity val ] }


withMsoLineHeightRule : String -> CssObject msg -> CssObject msg
withMsoLineHeightRule val (Settings settings) =
    Settings { settings | css = List.append settings.css [ MsoLineHeightRule val ] }


withDisplay : DisplayOptions -> CssObject msg -> CssObject msg
withDisplay val (Settings settings) =
    Settings { settings | css = List.append settings.css [ Display val ] }


withLineHeight : Unit -> Float -> CssObject msg -> CssObject msg
withLineHeight unit val (Settings settings) =
    Settings { settings | css = List.append settings.css [ LineHeight unit val ] }


withBorderCollapse : BorderCollapseOptions -> CssObject msg -> CssObject msg
withBorderCollapse val (Settings settings) =
    Settings { settings | css = List.append settings.css [ BorderCollapse val ] }


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


withFontSize : Unit -> Float -> CssObject msg -> CssObject msg
withFontSize unit val (Settings settings) =
    Settings { settings | css = List.append settings.css [ FontSize unit val ] }


withHeight : Unit -> Float -> CssObject msg -> CssObject msg
withHeight unit val (Settings settings) =
    Settings { settings | css = List.append settings.css [ Height unit val ] }


withMargin : Unit -> Float -> CssObject msg -> CssObject msg
withMargin unit val (Settings settings) =
    Settings { settings | css = List.append settings.css [ Margin unit val ] }


withMarginString : String -> CssObject msg -> CssObject msg
withMarginString val (Settings settings) =
    Settings { settings | css = List.append settings.css [ MarginStr val ] }


withMaxWidth : Unit -> Float -> CssObject msg -> CssObject msg
withMaxWidth unit val (Settings settings) =
    Settings { settings | css = List.append settings.css [ MaxWidth unit val ] }


withMinWidth : Unit -> Float -> CssObject msg -> CssObject msg
withMinWidth unit val (Settings settings) =
    Settings { settings | css = List.append settings.css [ MinWidth unit val ] }


withPadding : Unit -> Float -> CssObject msg -> CssObject msg
withPadding unit val (Settings settings) =
    Settings { settings | css = List.append settings.css [ Padding unit val ] }


withPaddingStr : String -> CssObject msg -> CssObject msg
withPaddingStr val (Settings settings) =
    Settings { settings | css = List.append settings.css [ PaddingStr val ] }


withTableLayout : TableLayoutOptions -> CssObject msg -> CssObject msg
withTableLayout option (Settings settings) =
    Settings { settings | css = List.append settings.css [ TableLayout option ] }


withWidth : Unit -> Float -> CssObject msg -> CssObject msg
withWidth unit val (Settings settings) =
    Settings { settings | css = List.append settings.css [ Width unit val ] }


withBorderSpacing : Unit -> Float -> CssObject msg -> CssObject msg
withBorderSpacing unit val (Settings settings) =
    Settings { settings | css = List.append settings.css [ BorderSpacing unit val ] }


type DisplayOptions
    = Block
    | InlineBlock
    | D_None
    | Flex
    | Grid


displayOptionsToString : DisplayOptions -> String
displayOptionsToString v =
    case v of
        Block ->
            "block"

        InlineBlock ->
            "inline-block"

        D_None ->
            "none"

        Flex ->
            "flex"

        Grid ->
            "grid"


type BorderCollapseOptions
    = Collapse
    | Separate


borderCollapseOptionsToString : BorderCollapseOptions -> String
borderCollapseOptionsToString val =
    case val of
        Collapse ->
            "collapse"

        Separate ->
            "separate"


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


type OverflowOptions
    = Visible
    | Hidden
    | Clip
    | Scroll
    | O_Auto


overFlowOptionsToString : OverflowOptions -> String
overFlowOptionsToString option =
    case option of
        Visible ->
            "visible"

        Hidden ->
            "hidden"

        Clip ->
            "clip"

        Scroll ->
            "scroll"

        O_Auto ->
            "auto"


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


unitValString : Unit -> Float -> String
unitValString u v =
    String.fromFloat v ++ unitToString u


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

        PaddingStr val ->
            { key = "padding", value = val }

        TableLayout val ->
            { key = "table-layout", value = val |> tableLayoutToString }

        Width unit val ->
            { key = "width", value = unitValString unit val }

        BorderSpacing unit val ->
            { key = "border-spacing", value = unitValString unit val }

        BorderCollapse val ->
            { key = "border-collapse", value = borderCollapseOptionsToString val }

        LineHeight unit val ->
            { key = "border-spacing", value = unitValString unit val }

        Display val ->
            { key = "display", value = displayOptionsToString val }

        MsoLineHeightRule val ->
            { key = "display", value = val }

        Opacity val ->
            { key = "display", value = String.fromFloat val }

        Overflow val ->
            { key = "display", value = overFlowOptionsToString val }

        MsoHide val ->
            { key = "mso-hide", value = val }

        TextAlign val ->
            { key = "text-align", value = textAlignOptionsToString val }

        Border unit val ->
            { key = "border", value = unitValString unit val }



-- Some defaults


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
