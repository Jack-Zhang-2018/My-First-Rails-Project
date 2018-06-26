class GameController < ApplicationController
  def try

    @test = cookies[:test]

    if cookies[:num_count]==nil
      cookies[:num_count]=0
    else
      cookies[:num_count]=cookies[:num_count].to_i+1
    end

    if cookies[:scrt_num] == nil
      cookies[:scrt_num] = rand(0..100)
    end

    cookies[:number] = params[:number] unless params[:number].nil?

    @guess = cookies[:number].to_i
    @scrt_num = cookies[:scrt_num].to_i
    @num_count=cookies[:num_count].to_i

    case
    when @guess < @scrt_num
      @result = "Low"
      # @num_count
    when @guess > @scrt_num
      @result = "High"
      # @num_count
    when @guess == @scrt_num
      @result = "Win"

      cookies[:scrt_num]=rand(0..100)
      @scrt_num=cookies[:scrt_num]

      cookies[:num_counter] = 1
      @num_count = cookies[:num_counter]

      # @num_count
    end
  end

  def reset
      cookies[:number] = params[:number] unless params[:number].nil?
      @guess=cookies[:number]
      cookies[:scrt_num]=rand(0..100)
      @scrt_num=cookies[:scrt_num]

      cookies[:num_counter] = 1
      @num_count = cookies[:num_counter]
      # @num_count
  end


end
