module Update exposing (..)

import Model exposing (..)


--UPDATE


getRoute : String -> Route
getRoute hash =
    case hash of
        "#home" ->
            HomeRoute

        "#startVisitPage" ->
            StartVisitRoute

        "#endVisitPage" ->
            EndVisitRoute

        "#audioMessagePage" ->
            AudioMessageRoute

        "#textMessagePage" ->
            TextMessageRoute

        "#previousVisitsPage" ->
            PreviousVisitsRoute

        _ ->
            NotFoundRoute


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        UrlChange location ->
            ( { model | route = getRoute location.hash }, Cmd.none )
