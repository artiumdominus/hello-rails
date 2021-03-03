module Visible
  extend ActiveSupport::Concern

  VALID_STATUES = ['public', 'private', 'archived']

  included do
    validates :status, inclusion: { in: VALID_STATUES }
  end

  class_methods do
    def public_count
      where(status: 'public').count
    end
  end

  def public?
    status == 'public'
  end

  def private?
    status == 'private'
  end

  def archived?
    status == 'achived'
  end
end
