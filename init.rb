require 'redmine'

require_dependency 'auto_assigned_user/hooks'

Redmine::Plugin.register :redmine_auto_assigned_user do
  name 'Redmine Auto Assigned User plugin'
  author 'Arkady Babulin'
  description 'If an user forget to assign the issue, this plugin will auto-assign to the project manager or CTO depends on tracker.'
  version '0.0.1'
  url 'http://github.com/the0retic/redmine_auto_assigned_user'
  author_url 'http://be.linkedin.com/in/ludovicgasc'
  requires_redmine :version_or_higher => '0.9.0'

  settings :default => {
    'tracker_director' => '',
    'project_manager_role' => '',
    'project_director_role' => '',
    'client_roles' => []
  }, :partial => 'settings/auto_assigned_user_settings'
end
