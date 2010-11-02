class WelcomeController < ApplicationController
  def index
    if user_signed_in?
      @log_entry   = current_user.log_entries.build
      @log_entries = current_user.log_entries.most_recent.pending.common
    end
  end
end

