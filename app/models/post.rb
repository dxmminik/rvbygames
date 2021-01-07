# frozen_string_literal: true

class Post < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, styles: { medium: '600x300', thumb: '200x100' }
  validates_attachment_content_type :image, content_type: %r{\Aimage/.*\Z}
end
