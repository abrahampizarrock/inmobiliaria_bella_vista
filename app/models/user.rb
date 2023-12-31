class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    enum role: [:vendedor, :admin]

    def vendedor?
      role == :vendedor
    end
  
    def admin?
      role == :admin
    end
end
