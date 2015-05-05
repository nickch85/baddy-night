class Player < ActiveRecord::Base
  scope :by_name, -> { order('name ASC') }

  belongs_to :grade



  def country_name
    country = ISO3166::Country[self.country_code]
    country.translations[I18n.locale.to_s] || country.name
  end
end
