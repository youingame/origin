class GameController < ApplicationController
  def index
  	@games = Game.all
  end

  def new
  end

  def create
  	@game = Game.new(params.require(:game).permit(:man_name, :woman_name, :type, :m_oral, :m_anal, :m_bdsm, :m_fist, :m_pie, :m_electro, :w_oral, :w_anal, :w_bdsm, :w_fist, :w_pie, :w_electro, :g_vibrator, :g_anal_plug, :g_vibro_pule, :g_massager, :g_strapon, :g_bondage, :g_pump, :g_plet, :g_klyap, :g_electro, :g_vosk, :g_latex, :g_rashiritel))
 	@game.step = 1
  	@game.man_points = 0
  	@game.woman_points = 0
  	@game.type_of = 1
  	reset_session
  	session[:curr_points] = 0
  	session[:man] ||= [0]
  	session[:man_type] ||= [0]
  	session[:woman_type] ||= [0]
  	session[:woman] ||= [0]
  	(session[:man_type] ||= []) << 1 if @game.m_anal
  	(session[:man_type] ||= []) << 2 if @game.m_bdsm
  	(session[:man_type] ||= []) << 3 if @game.m_fist
  	(session[:man_type] ||= []) << 4 if @game.m_oral
  	(session[:man_type] ||= []) << 5 if @game.m_pie
  	(session[:woman_type] ||= []) << 1 if @game.w_anal
  	(session[:woman_type] ||= []) << 2 if @game.w_bdsm
  	(session[:woman_type] ||= []) << 3 if @game.w_fist
  	(session[:woman_type] ||= []) << 4 if @game.w_oral
  	(session[:woman_type] ||= []) << 5 if @game.w_pie
  	@game.save
  	redirect_to @game
  end

  def show
  	@game = Game.find(params[:id])
  end

  def start
  	@game = Game.find(params[:id])
  	@game.step = 1
  	@game.man_points = 0
  	@game.woman_points = 0
  	@game.type_of = 1
  	session[:curr_points] = 0
  	@game.save
  end

  def next
  	@game = Game.find(params[:id])
    @point = 10
    if @game.step < 30

      @point = 40 if @game.step == 29
      @point = 30 if @game.step > 19 && @game.step < 29
      @point = 20 if @game.step > 9 && @game.step < 19
      @point = 10 if @game.step < 9

  	  if @game.type_of == 1
  			@question = Manquestion.where("points = ? AND id NOT IN(?) AND type_of IN(?)", @point, session[:man], session[:man_type])
        	@question = @question[rand(@question.size)]
        	puts ">>>>>>>>>>>>>>>>>>>>>>Question type: #{@question.type_of}"
  			@game.type_of = 2
  			@game.woman_points += session[:curr_points]
  			(session[:man] ||= []) << @question.id
  	  else
  			@question = Womanquestion.where("points = ? AND id NOT IN(?) AND type_of IN(?)", @point, session[:woman], session[:woman_type])
        	@question = @question[rand(@question.size)]
        	puts ">>>>>>>>>>>>>>>>>>>>>>Question type: #{@question.type_of}"
  			@game.step = @game.step + 1
  			@game.type_of = 1
  			@game.man_points += session[:curr_points]
  			(session[:woman] ||= []) << @question.id
      end

  	  session[:curr_points] = @question.points
  	  puts "game type: #{@game.type_of} "
  	  @game.save
    else
      @winner = @game.finishGame
      render :finish
    end
  end

  def next_bad
    @game = Game.find(params[:id])
    @point = 10
    if @game.step < 30

      @point = 40 if @game.step == 29
      @point = 30 if @game.step > 19 && @game.step < 29
      @point = 20 if @game.step > 9 && @game.step < 19
      @point = 10 if @game.step < 9

      if @game.type_of == 1
      
        @question = Manquestion.where("points = ? AND id NOT IN(?) AND type_of IN(?)", @point, session[:man], session[:man_type])
        @question = @question[rand(@question.size)]
        @game.type_of = 2
        @game.woman_points += session[:curr_points]
        (session[:man] ||= []) << @question.id
      else
        @question = Womanquestion.where("points = ? AND id NOT IN(?) AND type_of IN(?)", @point, session[:woman], session[:woman_type])
        @question = @question[rand(@question.size)]
        @game.step = @game.step + 1
        @game.type_of = 1
        @game.man_points += session[:curr_points]
        (session[:woman] ||= []) << @question.id
      end

      session[:curr_points] = @question.points
      puts "game type: #{@game.type_of} "
      @game.save
      render :next
    else
      @winner = @game.finishGame
      render :finish
    end
  end




end
