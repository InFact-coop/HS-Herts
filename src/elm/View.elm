module View exposing (..)

-- My Elm Files

import Html exposing (..)
import Model exposing (..)
import Routes.Home exposing (..)
import Routes.Navbar exposing (..)
import Routes.StartVisitPage exposing (..)
import Routes.EndVisitPage exposing (..)
import Routes.AudioMessagePage exposing (..)
import Routes.TextMessagePage exposing (..)
import Routes.PreviousVisitsPage exposing (..)
import Routes.NotFoundPage exposing (..)


view : Model -> Html Msg
view model =
    let
        page =
            case model.route of
                HomeRoute ->
                    home model

                StartVisitRoute ->
                    startVisitPage model

                EndVisitRoute ->
                    endVisitPage model

                AudioMessageRoute ->
                    audioMessagePage model

                TextMessageRoute ->
                    textMessagePage model

                PreviousVisitsRoute ->
                    previousVisitsPage model

                NotFoundRoute ->
                    notFoundPage model
    in
        div []
            [ navbar model
            , page
            ]
