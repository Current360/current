class QuotesController < ApplicationController
    def new
        @quote = Quote.new
    end

    def create
        @quote = Quote.new(quote_params)
        if @quote.save
            redirect_to circuit_path
        else
            redirect_to :new
        end
    end

    def edit
        @quote = Quote.find(params[:id])
    end

    def update
        @quote = Quote.find(params[:id])
        if @quote.update(quote_params)
            redirect_to circuit_path
        else
            render :edit
        end

    end

    private
        def quote_params
            params.require(:quote).permit(:quote, :cite)
        end
end
