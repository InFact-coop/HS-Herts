module View exposing (..)

-- My Elm Files

import Html exposing (..)
import Model exposing (..)
import Routes.Home exposing (..)
import Routes.Navbar exposing (..)
import Routes.PageOne exposing (..)
import Routes.PageTwo exposing (..)


view : Model -> Html Msg
view model =
    let
        page =
            case model.route of
                HomeRoute ->
                    home model

                PageOneRoute ->
                    pageOne model

                PageTwoRoute ->
                    pageTwo model
    in
    div []
        [ navbar model
        , page
        ]
