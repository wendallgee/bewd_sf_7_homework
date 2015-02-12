class RecordLabelsController < ApplicationController

	def index
		@record_labels = RecordLabel.all
	end

	def new
	end

	def edit
		@record_label = get_record_label
	end

	def update
		@record_label = get_record_label
  		@record_label.update(record_labels)
  		redirect_to record_label_path(@record_label)
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




