#' OpenAPI Petstore
#'
#' This is a sample server Petstore server. For this sample, you can use the api key `special-key` to test the authorization filters.
#'
#' The version of the OpenAPI document: 1.0.0
#' Generated by: https://openapi-generator.tech
#'

#' @docType class
#' @title ModelApiResponse
#' @description ModelApiResponse Class
#' @format An \code{R6Class} generator object
#' @field code  integer [optional]
#' @field type  character [optional]
#' @field message  character [optional]
#' @importFrom R6 R6Class
#' @importFrom jsonlite fromJSON toJSON
#' @export
ModelApiResponse <- R6::R6Class(
  'ModelApiResponse',
  public = list(
    `code` = NULL,
    `type` = NULL,
    `message` = NULL,
    #' Initialize a new ModelApiResponse class.
    #'
    #' @description
    #' Initialize a new ModelApiResponse class.
    #'
    #' @param code code
    #' @param type type
    #' @param message message
    #' @param ... Other optional arguments.
    #' @export
    initialize = function(
        `code`=NULL, `type`=NULL, `message`=NULL, ...
    ) {
      if (!is.null(`code`)) {
        stopifnot(is.numeric(`code`), length(`code`) == 1)
        self$`code` <- `code`
      }
      if (!is.null(`type`)) {
        stopifnot(is.character(`type`), length(`type`) == 1)
        self$`type` <- `type`
      }
      if (!is.null(`message`)) {
        stopifnot(is.character(`message`), length(`message`) == 1)
        self$`message` <- `message`
      }
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ModelApiResponse in JSON format
    #' @export
    toJSON = function() {
      ModelApiResponseObject <- list()
      if (!is.null(self$`code`)) {
        ModelApiResponseObject[['code']] <-
          self$`code`
      }
      if (!is.null(self$`type`)) {
        ModelApiResponseObject[['type']] <-
          self$`type`
      }
      if (!is.null(self$`message`)) {
        ModelApiResponseObject[['message']] <-
          self$`message`
      }

      ModelApiResponseObject
    },
    #' Deserialize JSON string into an instance of ModelApiResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of ModelApiResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ModelApiResponse
    #' @export
    fromJSON = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      if (!is.null(this_object$`code`)) {
        self$`code` <- this_object$`code`
      }
      if (!is.null(this_object$`type`)) {
        self$`type` <- this_object$`type`
      }
      if (!is.null(this_object$`message`)) {
        self$`message` <- this_object$`message`
      }
      self
    },
    #' To JSON string
    #'
    #' @description
    #' To JSON String
    #'
    #' @return ModelApiResponse in JSON format
    #' @export
    toJSONString = function() {
      jsoncontent <- c(
        if (!is.null(self$`code`)) {
        sprintf(
        '"code":
          %d
                ',
        self$`code`
        )},
        if (!is.null(self$`type`)) {
        sprintf(
        '"type":
          "%s"
                ',
        self$`type`
        )},
        if (!is.null(self$`message`)) {
        sprintf(
        '"message":
          "%s"
                ',
        self$`message`
        )}
      )
      jsoncontent <- paste(jsoncontent, collapse = ",")
      as.character(jsonlite::minify(paste('{', jsoncontent, '}', sep = "")))
    },
    #' Deserialize JSON string into an instance of ModelApiResponse
    #'
    #' @description
    #' Deserialize JSON string into an instance of ModelApiResponse
    #'
    #' @param input_json the JSON input
    #' @return the instance of ModelApiResponse
    #' @export
    fromJSONString = function(input_json) {
      this_object <- jsonlite::fromJSON(input_json)
      self$`code` <- this_object$`code`
      self$`type` <- this_object$`type`
      self$`message` <- this_object$`message`
      self
    },
    #' Validate JSON input with respect to ModelApiResponse
    #'
    #' @description
    #' Validate JSON input with respect to ModelApiResponse and throw an exception if invalid
    #'
    #' @param input the JSON input
    #' @export
    validateJSON = function(input) {
      input_json <- jsonlite::fromJSON(input)
    },
    #' To string (JSON format)
    #'
    #' @description
    #' To string (JSON format)
    #'
    #' @return String representation of ModelApiResponse
    #' @export
    toString = function() {
      self$toJSONString()
    }
  )
)

