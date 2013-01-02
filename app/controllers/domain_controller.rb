class DomainController < ApplicationController

  def index
    @domains = Domain.all

    respond_to do |format|
      format.html
    end
  end

  def new

  end

  def start
  end
end
