module Dsl.Types exposing (Attribute(..), DocAttribute(..), DocTags(..), Node(..), Tag(..))


type Node msg
    = -- Element Tag (List ( String, String )) (List Node)
      Element Tag (List (Attribute msg)) (List (Node msg))
    | DocElement DocTags (List (DocAttribute msg)) (List (Node msg))
    | TextElement String
    | MsoComments String


type Attribute msg
    = AcceptCharset String
    | Accept String
    | Accesskey String
    | Action String
    | Align String
    | Alt String
    | Autocomplete String
    | Autofocus String
    | Autoplay String
    | Checked String
    | Cite_ String
    | Class String
    | Colspan String
    | Cols String
    | Contenteditable String
    | Contextmenu String
    | Controls String
    | Coords String
    | Datetime String
    | Default String
    | Dir String
    | Disabled String
    | Download String
    | Draggable String
    | Dropzone String
    | Enctype String
    | Form_ String
    | For String
    | Headers String
    | Height String
    | Hidden String
    | Hreflang String
    | Href String
    | Id String
    | Itemprop String
    | Kind String
    | Lang String
    | List String
    | Loop String
    | Manifest String
    | Maxlength String
    | Max String
    | Media String
    | Method String
    | Minlength String
    | Min String
    | Multiple String
    | Name String
    | Novalidate String
    | Pattern String
    | Ping String
    | Placeholder String
    | Poster String
    | Preload String
      -- | Property String
    | Pubdate String
    | Readonly String
    | Rel String
    | Required String
    | Reversed String
    | Rowspan String
    | Rows String
    | Sandbox String
    | Scope String
    | Selected String
    | Shape String
    | Size String
    | Spellcheck String
    | Srcdoc String
    | Srclang String
    | Src String
    | Start String
    | Step String
    | Style String
    | Tabindex String
    | Target String
    | Title_ String
    | Type String
    | Value String
    | Width String
    | Wrap String


type Tag
    = A
    | Abbr
    | Address
    | Article
    | Aside
    | Audio
    | B
    | Bdi
    | Bdo
    | Blockquote
    | Br
    | Button
    | Canvas
    | Caption
    | Cite
    | Code
    | Col
    | Colgroup
    | Datalist
    | Dd
    | Del
    | Details
    | Dfn
    | Div
    | Dl
    | Dt
    | Em
    | Embed
    | Fieldset
    | Figcaption
    | Figure
    | Footer
    | Form
    | H1
    | H2
    | H3
    | H4
    | H5
    | H6
    | Hr
    | Header
    | I
    | Iframe
    | Img
    | Input
    | Ins
    | Kbd
    | Label
    | Legend
    | Li
    | Main_
    | Mark
    | Math
    | Menu
    | Menuitem
    | Meter
    | Nav
    | Object
    | Ol
    | Optgroup
    | Option
    | Output
    | P
    | Param
    | Pre
    | Progress
    | Q
    | Rp
    | Rt
    | Ruby
    | S
    | Samp
    | Section
    | Select
    | Small
    | Source
    | Span
    | Strong
    | Sub
    | Summary
    | Sup
    | Table
    | Tbody
    | Td
    | Text
    | Textarea
    | Tfoot
    | Th
    | Thead
    | Time
    | Tr
    | Track
    | U
    | Ul
    | Var
    | Video
    | Wbr


type DocTags
    = Html
    | Head
    | Body
    | Meta
    | Title
    | Style_


type DocAttribute msg
    = Dcharset String
    | Dname String
    | Dcontent String
    | Dlang String
    | Ddir String
    | Dxmlnsv String
    | Dxmlnso String
    | Dhttp_equiv String
    | Dtype String
