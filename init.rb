Redmine::Plugin.register :redmine_log_original_author do
  name 'Redmine Log Original Author'
  author 'takanok5129'
  description 'This is a plugin for Redmine to record the original author of issues in the server log'
  version '0.0.1'
  url 'https://github.com/takanok5129/redmine_log_original_author'
  author_url 'https://github.com/takanok5129'
end

require_dependency 'redmine_log_original_author/hook'
