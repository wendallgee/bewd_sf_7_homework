class RecordLabelsController < ApplicationController

	def index
		@record_labels = RecordLabel.all
	end

	def new
	end

	def edit
	end

	def update
	end


	def show
		@record_label = get_record_label
	end

	private
		def record_labels
			params.require(:RecordLabel).permit(:name)
		end

		def get_record_label
			@record_label = RecordLabel.find(params[:id])
		end
end


