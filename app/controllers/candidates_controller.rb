class CandidatesController < ApplicationController
	before_action :set_candidate, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!


	def save_candidate
		party = Party.find(candidate_params["party"])
		candidate = party.candidates.new(name: candidate_params["name"],age: candidate_params["age"])
		respond_to do |format|
			if candidate.save!
				candidate.avatar =  candidate_params["avatar"]
				candidate.save!
				candidate.constituencies << Constituency.find(candidate_params["constituency_id"])
				Rails.logger.info "DONE@@@@@@@@@@@@@@@@@@@@@"
				format.html { redirect_to static_page_get_candidate_data_path, notice: 'Candidate was successfully created.' }
			else
				format.html { redirect_to static_page_get_candidate_data_path, notice: 'Candidate was not successfully created.' }
			end
		end
	end

	# GET /candidates
	# GET /candidates.json
	def index
		@candidates = Candidate.all
	end

	# GET /candidates/1
	# GET /candidates/1.json
	def show
	end

	# GET /candidates/new
	def new
		@candidate = Candidate.new
	end

	# GET /candidates/1/edit
	def edit
	end

	# POST /candidates
	# POST /candidates.json
	def create
		@candidate = Candidate.new(candidate_params)
		@candidate.avatar = params[:file]
		respond_to do |format|
			if @candidate.save
				format.html { redirect_to @candidate, notice: 'Candidate was successfully created.' }
				format.json { render :show, status: :created, location: @candidate }
			else
				format.html { render :new }
				format.json { render json: @candidate.errors, status: :unprocessable_entity }
			end
		end
	end

	# PATCH/PUT /candidates/1
	# PATCH/PUT /candidates/1.json
	def update
		respond_to do |format|
			if @candidate.update(candidate_params)
				format.html { redirect_to @candidate, notice: 'Candidate was successfully updated.' }
				format.json { render :show, status: :ok, location: @candidate }
			else
				format.html { render :edit }
				format.json { render json: @candidate.errors, status: :unprocessable_entity }
			end
		end
	end

	# DELETE /candidates/1
	# DELETE /candidates/1.json
	def destroy
		@candidate.destroy
		respond_to do |format|
			format.html { redirect_to candidates_url }
			format.json { head :no_content }
		end
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_candidate
		@candidate = Candidate.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def candidate_params
		params.require(:candidate).permit(:name,:file, :party_id, :avatar, :wikipedia_link, :age,:state_id,:constituency_id,:party)
	end
end
