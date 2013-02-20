require 'helpers'
require 'travis/ticker'

Travis.Controller    = Em.Controller.extend()
Travis.TopController = Em.Controller.extend
  needs: ['currentUser']
  userBinding: 'controllers.currentUser'

Travis.ApplicationController = Em.Controller.extend
  templateName: 'layouts/home'

  connectLayout: (name) ->
    name = "layouts/#{name}"
    if @get('templateName') != name
      @set('templateName', name)

Travis.MainController = Em.Controller.extend()
Travis.StatsLayoutController = Em.Controller.extend()
Travis.ProfileLayoutController = Em.Controller.extend()
Travis.AuthLayoutController = Em.Controller.extend()
Travis.CurrentUserController = Em.ObjectController.extend()

Travis.AccountProfileController = Em.Controller.extend
  needs: ['currentUser']
  userBinding: 'controllers.currentUser'

Travis.AccountIndexController = Em.Controller.extend
  needs: ['profile']
  hooksBinding: 'controllers.profile.hooks'

require 'controllers/accounts'
require 'controllers/build'
require 'controllers/builds'
require 'controllers/flash'
require 'controllers/home'
require 'controllers/job'
require 'controllers/profile'
require 'controllers/repos'
require 'controllers/repo'
require 'controllers/running_jobs'
require 'controllers/sidebar'
require 'controllers/stats'
