class MathController < ApplicationController
    def add
        begin
            n1 = Integer(params[:num1])
            n2 = Integer(params[:num2])
            render :text => (n1+n2).to_s, :content_type => "text/plain"
        rescue
            render :status => 400, :text => "Invalid Input"
        end
    end
end
