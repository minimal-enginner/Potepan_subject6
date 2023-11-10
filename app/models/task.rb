class Task < ApplicationRecord
    validates :title, presence: true, length: {maximum: 20}
    validates :start_date, presence: true
    validates :end_date, presence: true
    validate :start_end_check
    validates :memo, length: {maximum: 500}

    def start_end_check
        if start_date != nil && end_date != nil
        errors.add(:end_date, ": 開始日以前の日付は使用できません") unless
        end_date > start_date
        end
    end
end