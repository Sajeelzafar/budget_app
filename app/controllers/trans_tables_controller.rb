class TransTablesController < ApplicationController
  before_action :set_transaction, only: %i[show edit update destroy]

  # GET /transactions or /transactions.json
  def index
    @transactions = TransTable.all
  end

  # GET /transactions/1 or /transactions/1.json
  def show; end

  # GET /transactions/new
  def new
    @transaction = TransTable.new
    @classification_id = params[:classification_id]
    @classifications = Classification.where(author: current_user)
    @class_tran = ClassTran.new
  end

  # GET /transactions/1/edit
  def edit; end

  # POST /transactions or /transactions.json
  def create
    @new_transaction = transaction_params
    @transaction = TransTable.new(name: @new_transaction[:name], amount: @new_transaction[:amount],
                                  author: current_user)
    @classification = Classification.find(@new_transaction[:classification_id])
    @class_tran = ClassTran.new(classification: @classification, trans_table: @transaction)

    respond_to do |format|
      if @transaction.save
        @class_tran.save
        format.html do
          redirect_to classification_path(@new_transaction[:classification_id]),
                      notice: 'Transaction was successfully created.'
        end
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /transactions/1 or /transactions/1.json
  def update
    respond_to do |format|
      if @transaction.update(transaction_params)
        format.html { redirect_to transaction_url(@transaction), notice: 'Transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @transaction }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /transactions/1 or /transactions/1.json
  def destroy
    @transaction.destroy

    respond_to do |format|
      format.html { redirect_to transactions_url, notice: 'Transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_transaction
    @transaction = Transaction.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def transaction_params
    params.require(:trans_table).permit(:name, :amount, :author, :classification_id)
  end
end
