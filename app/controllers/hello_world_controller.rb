class HelloWorldController < ApplicationController
  def index
    @hello_world_props = { name: "Stranger", surname: "Surname" }
  end
end
