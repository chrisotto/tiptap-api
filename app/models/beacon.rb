class Beacon < ApplicationRecord
  belongs_to :tippee
  validates :tippee, presence: true

  def uuid
    @uuid ||= 'c617d2c3-25a7-45d3-96c5-51a9e3731862'
  end

  def major
    @major ||= id.to_s(2).rjust(32, '0').slice(0,16).to_i(2)
  end

  def minor
    @minor ||= id.to_s(2).rjust(32, '0').slice(16,16).to_i(2)
  end
end
