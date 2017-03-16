module App exposing (..)

import Timer exposing (timer)
import Html exposing (Html, program)
import Messages exposing (Msg)
import Models exposing (Model)

init : ( Model, Cmd Msg )
init =
    ( "10:00", Cmd.none )

view : Model -> Html Msg
view model =
    timer model

update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Messages.SetTimer number ->
            ( number, Cmd.none )

subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none

main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
