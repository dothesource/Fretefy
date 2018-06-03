class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable

  after_create :create_account
  has_one :account

  attr_accessor :contact

  private

  def create_account
    Account.create(user_id: self.id, contact: contact)
  end
end
