class Post < ApplicationRecord
  validates :title, presence: true
  validates :start_date_at, presence: true
  validates :end_date_at, presence: true

  validate :start_end_check

  def start_end_check
    if start_date_at != nil
    errors.add(:end_date_at, "は開始日より前の日付は登録できません。") unless
    self.start_date_at < self.end_date_at 
    end
    end
    
#  end

 validate :date_before_start


 def date_before_start
  if start_date_at != nil
   errors.add(:start_date_at, "は今日以降のものを選択してください") if
   start_date_at < Date.today
  end
 end


  # def start_date_at
  #   return if start_date_at.blank?
  #   errors.add(:start_date_at, "は今日以降のものを選択してください") if start_date_at < Date.today
  # end

  # def end_date_at
  #   return if end_date_at.blank? || start_date_at.blank?
  #   errors.add(:end_date_at, "は開始日以降のものを選択してください") if end_date_at < start_date_at
  # end
end
