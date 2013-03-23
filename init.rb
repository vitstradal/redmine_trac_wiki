# Redmine Trac Wiki
require 'redmine'
require 'redmine_trac_wiki'

::Rails.logger.info 'Starting Trac Wiki for Redmine'

Redmine::Plugin.register :redmine_trac_wiki do
  name 'redmine_trac_wiki'
  author 'Vitas Stradal'
  description 'This provides Trac markup as a wiki format'
  version '0.0.1'
  url 'http://github.com/vitas/redmine_trac_wiki'
  author_url 'http://vitas.matfyz.cz'

  settings :default => {
    #'trac_formatter_require_block' => true
  }, :partial => 'settings/trac_wiki_settings'

  wiki_format_provider 'TracWiki', RedmineTracWiki::WikiFormatter, RedmineTracWiki::Helper
end
