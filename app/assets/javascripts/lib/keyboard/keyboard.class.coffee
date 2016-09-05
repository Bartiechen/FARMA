class window.FARMA.Keyboard

  constructor: () ->
    $.handlebars({
      templatePath: '/assets/lib/keyboard',
      templateExtension: 'hbs'
      partialPath: '/assets/lib/keyboard/partials',
      partials: ['element']
    });

    Handlebars.registerHelper 'log', (context) ->
      console.log context

    #render
    $('#keyboard-panel').render('keyboard', {
        keys: [
          { key: 7, value: 7, type: "key" },
          { key: 8, value: 8, type: "key" },
          { key: 9, value: 9, type: "key" },
          { key: "÷", value: "\\over", type: "operator" },
          { key: 4, value: 4, type: "key" },
          { key: 5, value: 5, type: "key" },
          { key: 6, value: 6, type: "key" },
          { key: "x", value: "*", type: "operator" },
          { key: 1, value: 1, type: "key" },
          { key: 2, value: 2, type: "key" },
          { key: 3, value: 3, type: "key" },
          { key: "-", value: "-", type: "operator" },
          { key: 0, value: 0, type: "key" },
          { key: ".", value: ".", type: "key" },
          { key: "=", value: "=", type: "eval" }
          { key: "+", value: "+", type: "operator" }
        ]
        specialKeys: [
          { key: "√", value: "\\sqrt{}", type: "key" },
          { key: "(", value: "{", type: "key" },
          { key: ")", value: "}", type: "key" },
          { key: "", value: "\\left[\\begin{matrix}\\end{matrix}\\right]", type: "operator  mdi mdi-matrix" },
          { key: "<sup>y</sup>√", value: "", type: "key" },
          { key: "𝑥<sup>2</sup>", value: "^2", type: "key" },
          { key: "𝑥<sup>y</sup>", value: "^", type: "key" },
          { key: "keyboard_return", value: "\\\\", type: "operator material-icons" }
        ]
      })

    # Apply functionality

    @clickHandler()
    @hotKeyHandler()

  clickHandler: () ->
    $(document).on 'click', '.key', (e) ->
      if $(this).attr('data-value') != 'C'
        window.FARMA.Screen.addToJax($(this).attr('data-value'))
      else
        window.FARMA.Screen.cleanScreen()

  hotKeyHandler: () ->
    $(document).on 'keypress', (e) ->
      switch e.key
        when 's' then window.FARMA.Screen.addToJax("\\sqrt{}")
        when 'o' then window.FARMA.Screen.addToJax("\\over")
        when 'm' then window.FARMA.Screen.addToJax("\\left[\\begin{matrix}\\end{matrix}\\right]")
        when 'n' then window.FARMA.Screen.addToJax("\\\\")
        when 'e' then window.FARMA.Screen.addToJax("&")
        when 'C' then window.FARMA.Screen.cleanScreen()
        else window.FARMA.Screen.addToJax(e.key)
