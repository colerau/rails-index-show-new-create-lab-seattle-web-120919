class CouponsController < ApplicationController
    def index
        @coupons = Coupon.all
    end

    def show
        @coupon = Coupon.find_by(params[:id])
    end

    def create
        @coupon = Coupon.new(coupon_params)

        if @coupon.save
            redirect coupon_path(@coupon)
        elsif 
            render :new
        end
    end

    def new 
        @coupon = Coupon.new(coupon_params)
    end

    def edit 

    end

    def update 

    end

    def destroy 

    end
end
