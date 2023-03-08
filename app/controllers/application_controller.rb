class ApplicationController < ActionController::Base
  layout :set_layout

  private def set_layout
    params[:controller].match(%r{\A(staff|admin|customer)/}) ? Regexp.last_match[1] : 'customer'
  end
end
