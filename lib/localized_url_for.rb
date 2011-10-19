require 'rails'
require 'rack'
require 'rack/mount'
require 'rack/mount/utils'

module LocalizedGenerateRoute
  def generate_with_locale(params = {}, recall = {}, options ={})
    generate_without_locale(params.merge(:locale => I18n.locale), recall, options)
  end
end

Rack::Mount::GeneratableRegexp::InstanceMethods.class_eval do
  include LocalizedGenerateRoute
  alias_method_chain :generate, :locale
end
