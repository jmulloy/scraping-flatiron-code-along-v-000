class Course

attr_accessor :title, :schedule, :description

@@all = []

  def initialize
    @@all << self
    doc.css(".post").each do |post|
    course = Course.new
    course.title = post.css("h2").text
    course.schedule = post.css(".date").text
    course.description = post.css("p").text
  end

  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

end
