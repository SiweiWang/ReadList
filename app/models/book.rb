class Book < ActiveRecord::Base

  scope :finished, ->{ where('finished_on IS not null') }
  scope :recent, ->{ where('finished_on > ?', 2.days.ago)}

  def finished?
    finished_on.present?
  end
end
