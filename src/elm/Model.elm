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
    , timerRunning = False
    }


type Route
    = HomeRoute
    | StartVisitRoute
    | EndVisitQuestionRoute
    | StopVisitRoute
    | AudioMessageRoute
    | TextMessageRoute
    | PreviousVisitsRoute
    | ThankyouRoute
    | NotFoundRoute


type alias FeedBack =
    { text : String
    , audio : String
    , lengthOfVisit : Int
    }


type alias Model =
    { route : Route
    , timerLength : Int
    , previousFeedback : List FeedBack
    , feedback : Maybe FeedBack
    , isMenuOpen : Bool
    , timerRunning : Bool
    }



-- Update


type Msg
    = UrlChange Navigation.Location
    | ToggleMenu
    | IncrementTimer
    | StartVisit
    | StopVisit
