class Reservation < ActiveRecord::Base
  belongs_to :user
  
    after_initialize :set_default_status

  enum status: [:requested, :confirmed, :waiting, :rejected, :dismissed, :cancelled]
  enum car_type: [:sedan, :station, :minivan]

  def set_default_status
    self.status ||= :requested
  end
  
  def cancel
    self.status = :cancelled
    self.save
  end
  
  def self.from_user(user)
    Reservation.where(user_id: user.id)
  end
  
  def self.uncancelled
    Reservation.where.not(status: 5)
  end
  
  
  
end
