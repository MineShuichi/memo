class User < ApplicationRecord
  
  #belongs_to :users, class_name: "User", foreign_key: "second_id"

  def show_datas
    second_show_datas(self)
    #binding.pry
  end

  def second_show_datas(object)
    logger.debug "======================================="
    logger.debug object.id
    logger.debug object.name
    logger.debug object.second_id
    logger.debug "======================================="

    if object.second_id == nil
      return
    end
    #binding.pry
    #parent = User.find(object.second_id)
    parent = User.find_by_id(object.second_id)
    if parent == nil
      return
    end
    second_show_datas(parent)
  end

end
