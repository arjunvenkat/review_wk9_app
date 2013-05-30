class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation

  has_secure_password

  has_many :received_messages, class_name: 'Message', foreign_key: 'receiver_id'

  has_many :sent_messages, class_name: 'Message', foreign_key: 'sender_id'


end
