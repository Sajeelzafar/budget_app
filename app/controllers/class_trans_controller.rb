class ClassTransController < ApplicationController
  before_action :set_class_tran, only: %i[ show edit update destroy ]

  # GET /class_trans or /class_trans.json
  def index
    @class_trans = ClassTran.all
  end

  # GET /class_trans/1 or /class_trans/1.json
  def show
  end

  # GET /class_trans/new
  def new
    @class_tran = ClassTran.new
  end

  # GET /class_trans/1/edit
  def edit
  end

  # POST /class_trans or /class_trans.json
  def create
    @class_tran = ClassTran.new(class_tran_params)

    respond_to do |format|
      if @class_tran.save
        format.html { redirect_to class_tran_url(@class_tran), notice: "Class tran was successfully created." }
        format.json { render :show, status: :created, location: @class_tran }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @class_tran.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_trans/1 or /class_trans/1.json
  def update
    respond_to do |format|
      if @class_tran.update(class_tran_params)
        format.html { redirect_to class_tran_url(@class_tran), notice: "Class tran was successfully updated." }
        format.json { render :show, status: :ok, location: @class_tran }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @class_tran.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_trans/1 or /class_trans/1.json
  def destroy
    @class_tran.destroy

    respond_to do |format|
      format.html { redirect_to class_trans_url, notice: "Class tran was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_tran
      @class_tran = ClassTran.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def class_tran_params
      params.require(:class_trans).permit(:classification_id, :trans_table_id)
    end
end
