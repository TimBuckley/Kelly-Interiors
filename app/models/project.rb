class Project < ActiveRecord::Base
  attr_accessible :title, :body
  
  validates :title, presence: :true
  
  has_many(
    :pictures,
    class_name: "Picture",
    foreign_key: :project_id,
    primary_key: :id
  )
  
end