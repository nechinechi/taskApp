# -*- coding: utf-8 -*-
class Project < ActiveRecord::Base
  has_many :tasks
  validates :title, presence: { message: "can't be brank" },
  length: { minimum: 3, message: "too short" }
end
