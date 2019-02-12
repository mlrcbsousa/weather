class User < ApplicationRecord
  # has_secure_password

  # # going into knock to customize that payload
  # def to_token_payload
  #   # needs to return a hash
  #   {
  #     # required one, sub or subject
  #     # or non standard `id: id`
  #     sub: id,
  #     admin: true,
  #     email: email
  #     # `exp:` will still go regardless
  #   }
  # end
end
