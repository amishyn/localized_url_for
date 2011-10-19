require 'rails'

module LocalizedUrlFor

  def url_for_with_locale(options)
    url_for_without_locale(options.merge(:locale => I18n.locale))
  end

end

ActionDispatch::Routing::UrlFor.class_eval do
  include LocalizedUrlFor
  alias_method_chain :url_for, :locale
end