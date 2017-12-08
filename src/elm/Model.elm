module Model exposing (..)

import Navigation


-- Model


initModel : Model
initModel =
    { route = HomeRoute
    , timerLength = 0
    , previousFeedback = listOfFeedbacks
    , feedback = Feedback "" 4 Nothing Nothing 0
    , isMenuOpen = False
    , timerRunning = False
    , isRecordingAudio = False
    , feedbackCount = 4
    , liveFeedback = Feedback "" 0 Nothing Nothing 0
    }


listOfFeedbacks : List Feedback
listOfFeedbacks =
    [ Feedback "Milner, #546783920" 1 (Just "Good visit") Nothing 3
    , Feedback "Smith, #976783920" 2 (Just "The dad was not there") Nothing 3
    , Feedback "Campbell, #897783920" 3 (Just "They offered me a cup of tea") Nothing 5
    ]


type Route
    = HomeRoute
    | StartVisitRoute
    | StopVisitQuestionRoute
    | StopVisitRoute
    | AudioMessageRoute
    | TextMessageRoute
    | PreviousVisitsOverviewRoute
    | PreviousVisitsItemRoute
    | ThankyouRoute
    | NotFoundRoute


type alias Feedback =
    { familyId : String
    , feedbackId : Int
    , text : Maybe String
    , audio : Maybe String
    , lengthOfVisit : Int
    }


type alias Model =
    { route : Route
    , timerLength : Int
    , previousFeedback : List Feedback
    , feedback : Feedback
    , isMenuOpen : Bool
    , timerRunning : Bool
    , isRecordingAudio : Bool
    , feedbackCount : Int
    , liveFeedback : Feedback
    }



-- Update


type Msg
    = UrlChange Navigation.Location
    | ToggleMenu
    | IncrementTimer
    | StartVisit
    | StopVisit
    | RecieveAudio String
    | StartAudio
    | StopAudio
    | SelectVisitItem Feedback
    | UpdateTextFeedback String
    | FinishFeedback
    | PlayAudio Bool
    | GoBack
    | ReRecord
