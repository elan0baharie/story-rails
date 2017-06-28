class Story < ActiveRecord::Base
  has_many :usersentences

  def imageShow()
    response = RestClient.get"http://www.splashbase.co/api/v1/images/random"
    self.image = JSON.parse(response.body).fetch('url')
  end
end
