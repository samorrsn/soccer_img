class StaticPagesController < ApplicationController
 
  before_filter :last_page
 
  private
 
  def last_page
    session[:last_page] = request.env['HTTP_REFERER']
    logger.debug "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
    logger.debug "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
    logger.debug "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
    logger.debug "foo"
    logger.debug request.env['HTTP_REFERER']
    #raise session[:last_page].inspect
  end
 
end