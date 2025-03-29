

## folder structure
+ assets
+ lib
  - components
  - models
  - views


## screen state
+ FUNCS: to access the selected information & control from the views and components
  - access should be granted through controled APIs w specific purposes
  - ! access meaning data access and mutations
  - functions manage upper state control (screen change)
+ for home-screen and information control component 
  - access to selected info
  - a trigger to redirect to update-screen with selected option
  - selection ll be defined in the component w 'type'
+ for update-screen and update control component
  - access to selected info
  - a control over the selected info (mutation)
  - ! selection ll be defined in the component w 'type'
  - a redirect control to home-screen through the STATE 


## app
+ SF: screen
  - subStates -- homeScreen, UpdateScreen
  - DATA: person instance
  - data getters -- name, age
  - data mutations -- name, age
  - state changes
    - to updateScreen with a selection from 2 buttons
    - to homeScreen upon update
+ homeScreen
  - infoComponent -- 2 instance
+ updateScreen
  - updateComponent -- 2 instance