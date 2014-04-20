# require_tree .

select_menu = ->
  path = window.location.pathname
  path = '/index.html' if path is '/'
  menus = document.querySelectorAll('nav > ul > li')
  selected_menu = Array.prototype.filter.call menus, (el)->
    link = el.querySelector('a')
    link.getAttribute('href') is path
  selected_menu[0].classList.add 'active' if selected_menu.length
select_menu()
