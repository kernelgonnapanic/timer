module Timer exposing (timer)

import Html exposing (Html, text, div, node)
import Html.Attributes exposing (class, rel, href)
import Html.Events exposing (onClick)

import Messages exposing (Msg)
import Models exposing (Model)

css path =
  node "link" [ rel "stylesheet", href path ] []

timer: Model -> Html Msg
timer model =
    div [] [
        css "styles.css",
        div [class "timer"] [
            div [] [text "My timer"],
            div [] [text model],
            div [class "timer--choose-time"] [
              div [class "button", onClick (Messages.SetTimer "10:00")] [text "Set 10:00"],
              div [class "button", onClick (Messages.SetTimer "20:00")] [text "Set 20:00"],
              div [class "button", onClick (Messages.SetTimer "30:00")] [text "Set 30:00"]
            ],
            div [class "button"] [text "Start!"]
        ]
    ]
