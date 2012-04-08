require 'rails'

module LocalizedUrlFor

  def url_for_with_locale(options)
    localized_options = options
    localized_options = options.merge(:locale => I18n.locale) if options.respond_to?(:merge)
    url_for_without_locale(localized_options)
  end

end

ActionDispatch::Routing::UrlFor.class_eval do
  include LocalizedUrlFor
  alias_method_chain :url_for, :locale
end
