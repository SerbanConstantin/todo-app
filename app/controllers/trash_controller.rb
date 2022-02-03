class TrashController < ApplicationController

    def trash_em
        @trash_em = List.where(:completed => true).destroy_all
        redirect_to lists_url(@list), notice: 'All Marked Items where successfuly deleted'
    end

    def trash_em_all
        @trash_em_all = List.all.destroy_all
        redirect_to lists_url(@list), notice: 'All Items where successfully deleted'
    end

end