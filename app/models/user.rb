class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         #Test
         #attr_accessor :name

         #não salva usuário se estiver em branco
         #validates_presence_of :name
end
