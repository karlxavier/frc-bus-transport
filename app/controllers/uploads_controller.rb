class UploadsController < ApplicationController

     def uploads
     end

     def master_import_2016
          Fee.import_2016(params[:file])
          redirect_to root_path
     end

     def master_import_2019
          Fee.import_2019(params[:file])
          redirect_to root_path
     end

end