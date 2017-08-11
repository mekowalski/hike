Daily

August 10 2017 Thursday
- 9:22PM     modify bindCreateTrekForm, mute gh oauth & link_to other user profiles
- 4:52PM     fianlly built successful form data display!

August 9 2017 Wednesday
- 8:51PM     still working on displaying new data, format added

August 8 2017 Tuesday
- 11:44AM    still working on post request display, unmuted respond_to in #show

August 7 2017 Monday
- 3:50PM    removing comments, muted signin via gh oauth & trek.js
- 1:32PM    new notes

August 4 2017 Friday
- 4:30PM    removed choose/create adv option, trek successfully created w/ adv assoc
- 3:31PM    finally working on submit handler, example string works, new notes for js
- 1:14PM    resolved issue with adventure assoc, working on display of new trek

July 28 2017 Friday
- 5:46PM    Merge branch 'new-js-rails' of github.com:mekowalski/hike into new-js-rails
- 5:45PM    accident modification
- 11:44AM   testing github push
- 11:03AM   new notes, + bindCreateTrekShow function, modify treks/new form_for

July 26 2017 Wednesday
- 5:16PM    working on index of treks on text-right main-column

July 25 2017, Tuesday
- 12:45PM   building func to index associated treks in text-right main-column
- 12:19PM   minor notes, modify treks#create & show actions

July 19 2017, Wednesday
- 6:24PM    flow of adv/index -> trek/index -> trek/show works but trek/show displays incorrect data
- 6:05PM    modify adv/show view, clean trek controller
- 4:53PM    finally corrected & modified trek#create & proper assoc, +new hiker_id column to treks table
- 2:58PM    solving trek#create, modify adv/trek.js files
- 12:32PM   trek new form replaces html, submit does nothing
- 11:09AM   modify adv/trek.js, sessions#create & treks index view
- 9:30AM    notes, modify path in sessions#create for oauth

July 18 2017, Tuesday
- 4:54PM    modify form_for trek w/ URL, collection_select & Cancel redirect
- 4:38PM    modify trek#new & create, resources :treks, treks/index & new, adventure/show view
- 3:07PM    rename div, modify AJAX for div.text-right, new adv bind
- 1:37PM    successful link_to hiker profile, finish AJAX, modify adv serializer assoc
- 1:16PM    modify adv#create, adv index view, adv model, muted adv/trek.js, fix migration, begin AJAX
- 12:51PM   refactor UX/IX, modify resources, adv/hikers/app cons, adv/hiker models, layout/adv views

July 17 2017, Monday
- 1:40PM    making notes on improper functions of app (js-rails-branch)
- 4:21PM    example nested treks in adventures form (avi-refactor)
- 4:14PM    some sample refactor (avi-refactor)

July 14 2017, Friday
- 6:08PM    retreive association correctly, remove comments
- 1:32PM    +trek serializer, remove #adventure_title, modify trek.js constructor
- 1:17PM    working with adv association for trek
- 11:48AM   still working on adv attr display, need to figure out grouping association

July 13 2017, Thursday
- 8:16PM    remove space
- 8:14PM    remove comments, modify formatShow, cannot figure out adv attribute
- 8:00PM    +new function to DRY code
- 7:26PM    successfully built e handler for new form & correct redirect function!!
- 1:29PM    +event for new form, modify class, trek#create & trek#show
- 12:36PM   +showTrekHandler func, modify trekBindClickHandler, trek#show & routes

July 12 2017, Wednesday
- 5:41PM    minor note
- 3:17PM    clean out comments, new comment regarding trek links
- 12:25PM   link to trek/show works! need to build ajax for no page refresh

July 11 2017, Tuesday
- 4:27PM    format click event, trying to build link for trek
- 1:42PM    trek con strong params, trek#create logic, move logic to modify trek model, modify trek/new
- 11:57PM   finish building show event, display show obj, need to solve trek/adv association

June 30 2017, Friday
- 10:36AM   working on click event for show

June 29 2017, Thursday
- 10:18PM   moved h1 to welcome.html, mod adventure proto & const func
- 2:39PM    /adventures/:id works but not nested, h1 still present instead of replacement
- 9:57AM    remove controller comments, +application comments

June 28 2017, Wednesday
- 12:14PM   minor change in adventure/trek js files
- 11:08AM   trek index url working!!
- 11:01AM   remove class in treks.js, +resources treks

June 26 2017, Monday
- 10:33AM   + this.id = trek.id, working on previous error still
- 10:15AM   still working on trek#show, url: hikers/:hiker_id/treks/:id not working

June 22 2017, Thursday
- 4:37PM    + respond_to in trek#index, comments on trek#show id
- 4:30PM    +trek.js, move trek binding, +trek const & proto funcs
- 3:35PM    minor changes

June 21 2017, Wednesday
- 4:40PM    +const trekBindClickHandlers(), +div trek index, +data for link_to, greet issue
- 3:11PM    pushState url finally working, pause building proto func, correct let id
- 1:09PM    still building click handlers & proto func
- 11:35AM   pushState improperly working, modify adventure#show
- 10:42AM   build constructor func, beginning proto func
- 10:22AM   +div#main & div#all-adventures, building return objs in console!
- 9:11AM    remove turbolinks in gemfile & debugger, log fianlly working!!
- 9:02AM    delete coffeescript files
- 8:45AM    remove gem/require turbolinks, + js include tag

June 20 2017, Tuesday
- 2:45PM    click event not working, tried debugging and comparison, no success
- 1:53PM    minor change in .js file
- 12:11PM   + adventure.js for click handler, mod layout links w/ class
- 11:25AM   add serializer adventure, activemodel serializer gem
- 11:07AM   modified adventure#index, render json!
