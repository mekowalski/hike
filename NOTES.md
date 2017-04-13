Models
-hiker: name, email, password via OAuth w/ GH

-trek: name, elevation(in ft), level

-journey: hiker_id, trek_id, state

hiker  - id 3 name Cernan email cernan@flatironschool.com password via Oauth
hiker  - id 6 name Malind email malind@gmail.com password via Oauth

trek id 7 name engineer mtn state colorado elevation 13000ft level m-d

journey id 2 hiker_id 3 trek_id 7 date 3/15/17
journey id 1 hiker_id 6 trek_id 7 date 3/8/17

------------------------------
WEDNESDAY
-conditional with normal & omniauth ASAP. do it today
-includes hiker/session views
-watch todo-authentication & todo-omniauth
-finish signup(form), signin(form) & signout
'i got this. no distractions just fun with code'

WEDNESDAY
writer(hiker) has many journals
writer has many entries through journals

journal(adventure) has many entries

entries(trek) belong to journal
entries belong to writer

-AR scope method
-nested form that writes to an associated model through a custom attribute writer

THURSDAY
-show checkboxes of existing adventure for new trek creation

current hiker and exiting hikers
-show all adventures of specific hiker
-show all treks of specific hiker
