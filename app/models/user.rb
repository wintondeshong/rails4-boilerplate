class User < ActiveRecord::Base
  # :async - devise-async for mailers via background tasks
  devise :confirmable,
    :database_authenticatable,
    :lockable,
    :recoverable,
    :registerable,
    :rememberable,
    :timeoutable,
    :trackable,
    :validatable
end
