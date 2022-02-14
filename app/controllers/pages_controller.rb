class PagesController < ApplicationController
  def home

  end

  def about
    # can do stuff
  end

  def contact
    user_query = params[:member]

    # when they haven't typed anything, don't do any filtering and show the whole array
    @members = ["olivier", "patricia", "max", "claire", "olivia"]

    # when they've typed something, i filter the array
    if user_query
      # filter the array
      @members = @members.select do |member|
        # if this condition is true, it keeps it in the array
        member.starts_with? user_query.downcase
      end
    end
  end
end
