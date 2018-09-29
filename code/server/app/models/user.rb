class User < ApplicationRecord
  has_secure_password

  has_many :interests

  validates_presence_of :username, :description, :name, :orcid, :research_area, :institution

  validates_uniqueness_of :username, :email, :orcid

  def info
    as_json(except: [:password_digest])
  end
end
