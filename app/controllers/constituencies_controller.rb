class ConstituenciesController < ApplicationController
  layout "others"
	before_action :set_constituency, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, except: [:show, :search_result]

	def search_result
		# nil.test!
		constituency_id = search_params["constituency_id"]
    if constituency_id.empty?
      redirect_to root_path
    else
      constituency = Constituency.find(constituency_id)
		@candidates = constituency.candidates
		Rails.logger.info @candidates.inspect
    end
	end

	# GET /constituencies
	# GET /constituencies.json
	def index
		@constituencies = Constituency.all
	end

	# GET /constituencies/1
	# GET /constituencies/1.json
	def show
	end

	# GET /constituencies/new
	def new
		@constituency = Constituency.new
	end

	# GET /constituencies/1/edit
	def edit
	end

	# POST /constituencies
	# POST /constituencies.json
	def create
		state = State.find(constituency_params["state"])
		if state
			@constituency = state.constituencies.new(name: constituency_params["name"],wikipedia_link: constituency_params["wikipedia_link"])
			# nil.test!
			respond_to do |format|
				if @constituency.save
					format.html { redirect_to @constituency, notice: 'Constituency was successfully created.' }
					format.json { render :show, status: :created, location: @constituency }
				else
					format.html { render :new }
					format.json { render json: @constituency.errors, status: :unprocessable_entity }
				end
			end
		else
			respond_to do |format|
				format.html{render json: @constituency.errors, status: :unprocessable_entity}
			end
		end
	end

	# PATCH/PUT /constituencies/1
	# PATCH/PUT /constituencies/1.json
	def update
		respond_to do |format|
			if @constituency.update(constituency_params)
				format.html { redirect_to @constituency, notice: 'Constituency was successfully updated.' }
				format.json { render :show, status: :ok, location: @constituency }
			else
				format.html { render :edit }
				format.json { render json: @constituency.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /constituencies/1
	# DELETE /constituencies/1.json
	def destroy
		@constituency.destroy
			respond_to do |format|
			format.html { redirect_to constituencies_url }
			format.json { head :no_content }
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_constituency
		@constituency = Constituency.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def constituency_params
		params.require(:constituency).permit(:name, :state_id, :wikipedia_link,:constituency_id,:state)
	end
	def search_params
		params.require(:search).permit(:state_id,:constituency_id)
	end
end
