class Picture < ActiveRecord::Base
  attr_accessible :project_id, :photo
  
  validates :project_id, :photo, presence: :true
  
  has_attached_file :photo, :styles => {
    big: "600x600>",
    small: "50x50#"
  }
  
  belongs_to(
    :project,
    class_name: "Project",
    foreign_key: :project_id,
    primary_key: :id
  )
  
end
