module Dsl.MsoTest exposing (..)

import Dsl.Mso as Mso
import Expect
import Fuzz exposing (Fuzzer, int, list, string)
import Test exposing (..)


pixelContent : String
pixelContent =
    """ 
<noscript>
  <xml>
      <o:OfficeDocumentSettings>
          <o:PixelsPerInch> 96 </o:PixelsPerInch>
      </o:OfficeDocumentSettings>
  </xml> 
</noscript> """


styleContent : String
styleContent =
    """ 
<style type="text/css">
    body {
        background-color: #dde0e1 !important
    }

    body,
    table,
    td,
    p,
    a {
        font-family: Arial, Helvetica !important;
    }

    table {
        border-spacing: 0 !important;
        border-collapse: collapse !important;
        line-height: 100% !important;
        mso-table-lspace: 0pt !important;
        mso-table-rspace: 0pt !important;
        mso-line-height-rule: exactly !important;
    }``
</style> 
"""


suite : Test
suite =
    describe "MSO Tests"
        [ test "pixel Content" <|
            \_ ->
                Expect.equal Mso.pixelContent pixelContent
        , test "style Content" <|
            \_ ->
                Expect.equal Mso.styleContent styleContent
        , test "mso style Content" <|
            \_ ->
                Expect.equal (Mso.msoContent styleContent) ("<!-- [if mso]>" ++ styleContent ++ "<![endif]-->")
        , test "mso pixel Content" <|
            \_ ->
                Expect.equal (Mso.msoContent pixelContent) ("<!-- [if mso]>" ++ pixelContent ++ "<![endif]-->")
        ]
