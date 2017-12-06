module Model exposing (..)

import Navigation


-- Model


initModel : Model
initModel =
    { route = HomeRoute
    , timerLength = 0
    , previousFeedback = listOfFeedbacks
    , feedback = Nothing
    , isMenuOpen = False
    , timerRunning = False
    }


listOfFeedbacks : List FeedBack
listOfFeedbacks =
    [ FeedBack (Just "Good visit") Nothing 3
    , FeedBack (Just "The dad was not there") Nothing 3
    , FeedBack (Just "They offered me a cup of tea") Nothing 5
    ]


type Route
    = HomeRoute
    | StartVisitRoute
    | StopVisitQuestionRoute
    | StopVisitRoute
    | AudioMessageRoute
    | TextMessageRoute
    | PreviousVisitsRoute
    | ThankyouRoute
    | NotFoundRoute


type alias FeedBack =
    { text : Maybe String
    , audio : Maybe String
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
