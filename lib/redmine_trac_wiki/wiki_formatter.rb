require 'rubygems'
require 'trac_wiki'

module RedmineTracWiki
  class WikiFormatter

    attr_accessor :text

    # Create the object
    def initialize(text = "")
      @text = text
      @options = {}
    end

    def to_html(&block)
      return TracWiki.render(@text, @options)
    rescue RuntimeError => e
      return "<pre>#{e.message}</pre>"
    end
  end
end
