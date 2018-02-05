class BoardMessagesController < ApplicationController
  before_action :authenticate_account!
  before_action :set_board_message, only: [:show, :edit, :update, :destroy]

  # GET /board_messages
  # GET /board_messages.json
  def index
    @messages = BoardMessage.all
    users=BoardUser.where'account_id==?',current_account.id
    if users[0]==nil then
     user=BoardUser.new
     user.account_id=current_account.id
     user.nickname='<<no name>>'
     user.save
     users=BoardUser.where'account_id==?',current_account.id
    end
  end

  # GET /board_messages/1
  # GET /board_messages/1.json
  def show
    redirect_to'/board_messages'
  end

  # GET /board_messages/new
  def new
    redirect_to'/board_messages'
  end

  # GET /board_messages/1/edit
  def edit
    redirect_to'/board_messages'
  end

  # POST /board_messages
  # POST /board_messages.json
  def create
    @board_message = BoardMessage.new(board_message_params)

    respond_to do |format|
      if @board_message.save
        format.html { redirect_to @board_message, notice: 'Board message was successfully created.' }
        format.json { render :show, status: :created, location: @board_message }
      else
        format.html { render :new }
        format.json { render json: @board_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /board_messages/1
  # PATCH/PUT /board_messages/1.json
  def update
    redirect_to'/board_messages'
  end

  # DELETE /board_messages/1
  # DELETE /board_messages/1.json
  def destroy
    redirect_to'/board_messages'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_board_message
      @board_message = BoardMessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def board_message_params
      params.require(:board_message).permit(:content, :board_user_id)
    end
end
