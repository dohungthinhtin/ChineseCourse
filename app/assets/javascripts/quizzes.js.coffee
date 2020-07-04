# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
jQuery ->
  document.addEventListener 'turbolinks:load', ->
    initEventAutoComplete($("[data-behavior='autocomplete']"))

  $(document).on 'click', 'form .remove_fields', (event) ->
      $(this).prev('input[type=hidden]').val('1')
      $(this).closest('fieldset').hide()
      event.preventDefault()

  $(document).on 'click', 'form .add_fields', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    if $(this).siblings(".answers-group").length > 0
      $(this).siblings(".answers-group").append($(this).data('fields').replace(regexp, time))
    else
      $(this).before($(this).data('fields').replace(regexp, time))

    newInput = $(this).closest('form').find('fieldset:last textarea')
    initEventAutoComplete(newInput)
    event.preventDefault()


initEventAutoComplete = (inputElement) ->
  $input = inputElement
  options =
    getValue: 'content'
    url: (phrase) ->
      '/library_questions/search.json?q=' + phrase
    categories: [ {
      listLocation: 'library_questions'
      header: '---Questions--'
    } ]
    list: onChooseEvent: ->
      $input.each (index, item) ->
        data = $(item).getSelectedItemData()
        if isNaN(data)
          answers = data.answers
          $(this).closest('fieldset').find '.add_fields'
          oldAnswer = $(item).closest('fieldset').find('.answers-group .remove_fields')
          $.each oldAnswer, (_index, answer) ->
            $(answer).click()

          $.each answers, (_index, answer) ->
            $(item).closest('fieldset').find('.add_fields').click()
            newestAnswer = $(item).closest('fieldset').find('.answers-group fieldset:last')
            newestAnswer.find('input[type=\'text\']').val answer.content
            newestAnswer.find('input[type=\'checkbox\']').prop 'checked', answer.correct
            return
          console.log data
        return
      return
  $input.easyAutocomplete options