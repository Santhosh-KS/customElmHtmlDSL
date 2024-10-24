module Dsl.Tags exposing
    ( a
    , h1
    , header
    , nodeToHtml
    , p
    , tagToHtml
    , toString
    )

import Dsl.Attributes exposing (attrToHtmlAttr)
import Dsl.Types exposing (Attribute, Node(..), Tag(..))
import Html exposing (Html)


header : List (Attribute msg) -> List (Node msg) -> Node msg
header attrs childern =
    Element Header attrs childern


h1 : List (Attribute msg) -> List (Node msg) -> Node msg
h1 attrs childern =
    Element H1 attrs childern


p : List (Attribute msg) -> List (Node msg) -> Node msg
p attrs childern =
    Element P attrs childern


a : List (Attribute msg) -> List (Node msg) -> Node msg
a attrs childern =
    Element A attrs childern


toString : Tag -> String
toString tag =
    case tag of
        A ->
            "a"

        Abbr ->
            "abbr"

        Address ->
            "address"

        Article ->
            "article"

        Aside ->
            "aside"

        Audio ->
            "audio"

        B ->
            "b"

        Bdi ->
            "bdi"

        Bdo ->
            "bdo"

        Blockquote ->
            "blockquote"

        Br ->
            "br"

        Button ->
            "button"

        Canvas ->
            "canvas"

        Caption ->
            "caption"

        Cite ->
            "cite"

        Code ->
            "code"

        Col ->
            "col"

        Colgroup ->
            "colgroup"

        Datalist ->
            "datalist"

        Dd ->
            "dd"

        Del ->
            "del"

        Details ->
            "details"

        Dfn ->
            "dfn"

        Div ->
            "div"

        Dl ->
            "dl"

        Dt ->
            "dt"

        Em ->
            "em"

        Embed ->
            "embed"

        Fieldset ->
            "fieldset"

        Figcaption ->
            "figcaption"

        Figure ->
            "figure"

        Footer ->
            "footer"

        Form ->
            "form"

        H1 ->
            "h1"

        H2 ->
            "h2"

        H3 ->
            "h3"

        H4 ->
            "h4"

        H5 ->
            "h5"

        H6 ->
            "h6"

        Header ->
            "header"

        Hr ->
            "hr"

        I ->
            "i"

        Iframe ->
            "iframe"

        Img ->
            "img"

        Input ->
            "input"

        Ins ->
            "ins"

        Kbd ->
            "kbd"

        Label ->
            "label"

        Legend ->
            "legend"

        Li ->
            "li"

        Main_ ->
            "main_"

        Mark ->
            "mark"

        Math ->
            "math"

        Menu ->
            "menu"

        Menuitem ->
            "menuitem"

        Meter ->
            "meter"

        Nav ->
            "nav"

        Object ->
            "object"

        Ol ->
            "ol"

        Optgroup ->
            "optgroup"

        Option ->
            "option"

        Output ->
            "output"

        P ->
            "p"

        Param ->
            "param"

        Pre ->
            "pre"

        Progress ->
            "progress"

        Q ->
            "q"

        Rp ->
            "rp"

        Rt ->
            "rt"

        Ruby ->
            "ruby"

        S ->
            "s"

        Samp ->
            "samp"

        Section ->
            "section"

        Select ->
            "select"

        Small ->
            "small"

        Source ->
            "source"

        Span ->
            "span"

        Strong ->
            "strong"

        Sub ->
            "sub"

        Summary ->
            "summary"

        Sup ->
            "sup"

        Table ->
            "table"

        Tbody ->
            "tbody"

        Td ->
            "td"

        Text ->
            "text"

        Textarea ->
            "textarea"

        Tfoot ->
            "tfoot"

        Th ->
            "th"

        Thead ->
            "thead"

        Time ->
            "time"

        Tr ->
            "tr"

        Track ->
            "track"

        U ->
            "u"

        Ul ->
            "ul"

        Var ->
            "var"

        Video ->
            "video"

        Wbr ->
            "wbr"


tagToHtml : Tag -> List (Attribute msg) -> List (Node msg) -> Html msg
tagToHtml tag attrs children =
    case tag of
        A ->
            Html.a (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Abbr ->
            Html.abbr (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Address ->
            Html.address (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Article ->
            Html.article (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Aside ->
            Html.aside (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Audio ->
            Html.audio (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        B ->
            Html.b (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Bdi ->
            Html.bdi (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Bdo ->
            Html.bdo (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Blockquote ->
            Html.blockquote (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Br ->
            Html.br (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Button ->
            Html.button (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Canvas ->
            Html.canvas (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Caption ->
            Html.caption (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Cite ->
            Html.cite (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Code ->
            Html.code (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Col ->
            Html.col (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Colgroup ->
            Html.colgroup (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Datalist ->
            Html.datalist (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Dd ->
            Html.dd (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Del ->
            Html.del (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Details ->
            Html.details (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Dfn ->
            Html.dfn (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Div ->
            Html.div (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Dl ->
            Html.dl (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Dt ->
            Html.dt (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Em ->
            Html.em (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Embed ->
            Html.embed (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Fieldset ->
            Html.fieldset (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Figcaption ->
            Html.figcaption (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Figure ->
            Html.figure (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Footer ->
            Html.footer (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Form ->
            Html.form (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        H1 ->
            Html.h1 (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        H2 ->
            Html.h2 (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        H3 ->
            Html.h3 (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        H4 ->
            Html.h4 (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        H5 ->
            Html.h5 (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        H6 ->
            Html.h6 (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Header ->
            Html.header (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Hr ->
            Html.hr (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        I ->
            Html.i (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Iframe ->
            Html.iframe (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Img ->
            Html.img (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Input ->
            Html.input (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Ins ->
            Html.ins (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Kbd ->
            Html.kbd (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Label ->
            Html.label (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Legend ->
            Html.legend (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Li ->
            Html.li (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Main_ ->
            Html.main_ (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Mark ->
            Html.mark (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Math ->
            Html.math (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Menu ->
            Html.menu (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Menuitem ->
            Html.menuitem (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Meter ->
            Html.meter (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Nav ->
            Html.nav (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Object ->
            Html.object (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Ol ->
            Html.ol (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Optgroup ->
            Html.optgroup (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Option ->
            Html.option (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Output ->
            Html.output (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        P ->
            Html.p (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Param ->
            Html.param (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Pre ->
            Html.pre (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Progress ->
            Html.progress (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Q ->
            Html.q (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Rp ->
            Html.rp (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Rt ->
            Html.rt (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Ruby ->
            Html.ruby (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        S ->
            Html.s (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Samp ->
            Html.samp (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Section ->
            Html.section (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Select ->
            Html.select (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Small ->
            Html.small (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Source ->
            Html.source (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Span ->
            Html.span (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Strong ->
            Html.strong (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Sub ->
            Html.sub (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Summary ->
            Html.summary (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Sup ->
            Html.sup (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Table ->
            Html.table (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Tbody ->
            Html.tbody (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Td ->
            Html.td (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Text ->
            -- TODO FIXME: fix the text node.
            -- Html.div [] [ Html.text (List.map attrToHtmlAttr attrs |> String.join " ") ]
            Html.div (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Textarea ->
            Html.textarea (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Tfoot ->
            Html.tfoot (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Th ->
            Html.th (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Thead ->
            Html.thead (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Time ->
            Html.time (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Tr ->
            Html.tr (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Track ->
            Html.track (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        U ->
            Html.u (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Ul ->
            Html.ul (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Var ->
            Html.var (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Video ->
            Html.video (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)

        Wbr ->
            Html.wbr (List.map attrToHtmlAttr attrs) (List.map nodeToHtml children)


nodeToHtml : Node msg -> Html msg
nodeToHtml node =
    case node of
        Element tag attrs childlren ->
            tagToHtml tag attrs childlren

        TextElement val ->
            Html.text val

        -- NOTE: We don't render the DocTags in Elm workflow.
        DocElement tag attrs children ->
            Html.text ""
