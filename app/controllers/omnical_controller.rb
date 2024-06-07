class OmnicalController < ApplicationController
  def home
    render({:template=>"omnical_templates/home"})
  end

  def squared
    render({:template=>"omnical_templates/squared"})
  end

  def squaredRoot
    render({:template=>"omnical_templates/squaredRoot"})
  end

  def payment
    render({:template=>"omnical_templates/payment"})
  end

  def random
    render({:template=>"omnical_templates/random"})
  end

  def squaredResults
    @the_num = params.fetch("number")
    @the_result = @the_num.to_f ** 2
    render({:template=>"omnical_templates/square_result"})
  end

  def squaredRootResults
    @the_num = params.fetch("user_number")
    @the_result = @the_num.to_f ** 0.5
    render({:template=>"omnical_templates/square_root_result"})
  end

  def paymentResults
    @apr = params.fetch("user_apr").to_f#.to_fs(:percentage, { :precision => 4 })
    @num_years = params.fetch("user_years")
    @pv = params.fetch("user_pv").to_f#.to_fs(:currency, { :precision => 2 })
    @r = (@apr.to_f/100)/12
    @n = @num_years.to_i * 12
    @numerator = @r*@pv
    @denominator = 1 - (1 + @r)** -@n
    @payment = @numerator/@denominator

    render({:template=>"omnical_templates/payment_result"})
  end

  def randomResults
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    @rand_num = rand(@min..@max)

    render({:template=>"omnical_templates/random_result"})
  end
end
