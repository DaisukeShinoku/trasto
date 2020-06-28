class User::RoomsController < ApplicationController
  def create
    @room = Room.create
    @entry1 = Entry.create(:room_id => @room.id, :user_id => current_user.id)
    @entry2 = Entry.create(params.require(:entry).permit(:user_id, :room_id).merge(:room_id => @room.id))
    redirect_to request.referrer || root_url 
  end

  def show
    @room = Room.find(params[:id])
    if Entry.where(:user_id => current_user.id, :room_id => @room.id).present?
      @messages = @room.messages.includes(:user).order(:id)
      @message = current_user.messages.build
      @entries = @room.entries
    else
      redirect_back(fallback_location: root_path)
    end
  end

  def show_additionally
    # ********** 以下を追加 **********
    # 追加のメッセージ10件を取得する
    last_id = params[:oldest_message_id].to_i - 1    
    @messages = Message.includes(:user).order(:id).where(id: 1..last_id).last(10)
    # ********** 以上を追加 **********
  end
end
