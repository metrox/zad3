class Post < ActiveRecord::Base
  validates :name,  :presence => true
  validates :title, :presence => true,
                    :length => { :minimum => 5 }
  before_destroy:backup
  belongs_to :category
  def backup
    copy = BackupPost.create(:name => self.name, :title => self.title)
  end
  has_many :comments, :dependent => :destroy
  has_many :tags
  has_many :prio
   
   
  accepts_nested_attributes_for :tags, :allow_destroy => :true,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } }
end
