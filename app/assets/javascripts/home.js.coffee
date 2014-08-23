# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


window.addEventListener "polymer-ready", (e) ->
  console.log "Polymer is Ready"
  
  map = document.querySelector('google-map')  
  mapBinding = document.querySelector('#mapbinding')  
  mapBinding.map = map
  
  
  navicon = document.getElementById('navicon')
  
  drawerPanel = document.getElementById('drawerPanel')
  
  navicon.addEventListener "click", ->
    console.log "Click NavIcon"
    drawerPanel.togglePanel()
    
    
  addressFld = document.getElementById('addressFld')
  
  addressFld.addEventListener "keypress", (e) ->
    
    if e.keyCode == 13
      console.log "Input: ", addressFld.inputValue 
      text = addressFld.inputValue 
      search = document.querySelector('#map-search')
      search.query = text  
          
      search.search (res, status) ->
        if res isnt null
          map = document.querySelector('google-map')  
          map.latitude = res[0].geometry.location.lat()
          map.longitude = res[0].geometry.location.lng()
      
    
      
    
    
      
  