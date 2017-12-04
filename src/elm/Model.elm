module Model exposing (..)

import Navigation


-- Model


initModel : Model
initModel =
    { route = HomeRoute
    , timerLength = 0
    , previousFeedback = []
    , feedback = Nothing
    , isMenuOpen = False
    }


type Route
    = HomeRoute
    | StartVisitRoute
    | EndVisitRoute
    | AudioMessageRoute
    | TextMessageRoute
    | PreviousVisitsRoute
    | NotFoundRoute


type FeedBack
    = Audio String
    | Text String


type alias Model =
    { route : Route
    , timerLength : Int
    , previousFeedback : List FeedBack
    , feedback : Maybe FeedBack
    , isMenuOpen : Bool
    }



-- Update


type Msg
    = UrlChange Navigation.Location
    | ToggleMenu
