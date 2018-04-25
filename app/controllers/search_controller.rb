class SearchController < ApplicationController
  def index
    q = params[:q]
    redirect_to search_results_path + "?utf8=✓&q=" + "#{q}"
  end

  def results
    q = params[:q]
         unless q.blank?
           @res = Product.search do
             #NEVER put an instance variable here!!!
             #Id est, @q. It will return the whole table!
             fulltext q
     end 
    end
  end
end
