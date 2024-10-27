module Components.ResetPassword exposing (..)

import Components.StyleHelpers as CS
import Dsl.Attributes as A
import Dsl.Helpers exposing (nonDisplayCharSet)
import Dsl.Mso exposing (preHeaderMSOIssueTrick)
import Dsl.Tags exposing (a, div, img, td, text, tr)
import Dsl.Types exposing (Node)


topBorder : Node msg
topBorder =
    tr []
        [ td
            [ A.height "8"
            , A.style "background-color: #d5f3f4"
            ]
            [ div [ A.style preHeaderMSOIssueTrick ]
                [ text (String.repeat 2 nonDisplayCharSet)
                ]
            ]
        ]


topBannerLogo : Node msg
topBannerLogo =
    tr []
        [ td
            [ A.style topBannerLogoStyle
            ]
            [ a
                [ A.href "https://example.com"
                ]
                [ img
                    [ A.src topBannerImageSrc
                    , A.alt "Logo"
                    , A.width "190" -- Required for the images to showup without any scaling issues in outlook
                    ]
                    []
                ]
            ]
        ]


topBannerLogoStyle : String
topBannerLogoStyle =
    CS.new { name = "topBannerLogoStyle" }
        |> CS.withPaddingStr "14px 0 10px 0"
        |> CS.withTextAlign CS.Center
        |> CS.toString


topBannerImageSrc : String
topBannerImageSrc =
    "\n   https://mcusercontent.com/474f5b70c3b324277323d4c42/images/8c6d35c2-2b66-5af9-d40f-1eec9d2dcaf3.png"


topBannerImageCss : String
topBannerImageCss =
    CS.new { name = "topBannerImageCss " }
        |> CS.withWidth CS.Pixel 190
        |> CS.toString



{- <!-- Image Links:
   https://i.ibb.co/1fN4jNV/w3newbie.png
   https://mcusercontent.com/474f5b70c3b324277323d4c42/images/8c6d35c2-2b66-5af9-d40f-1eec9d2dcaf3.png
   https://raw.githubusercontent.com/w3newbie/html-email-mastery-images/main/basic-template/w3newbie.png

   https://i.ibb.co/djwMPKK/lock-banner.jpg
   https://mcusercontent.com/474f5b70c3b324277323d4c42/images/80657041-e007-7e23-37ed-2e10ac4f5cac.jpg
   https://raw.githubusercontent.com/w3newbie/html-email-mastery-images/main/basic-template/lock-banner.jpg

   https://i.ibb.co/84RF9Vc/button.png
   https://mcusercontent.com/474f5b70c3b324277323d4c42/images/0f63e7e6-d834-2e03-a0f8-17b043f7763e.png
   https://raw.githubusercontent.com/w3newbie/html-email-mastery-images/main/basic-template/button.png
   -->
-}
