class AdmVarxController < ApplicationController
	
	before_action :authenticate_user!

	def grid
		render :layout => false
	end

	def grid_data
		rows = params[:rows].to_i
		sortx = params[:sort]
		orderx = params[:order]

		#mencari offset
		if(!params[:page])
			page = 1
		else
			page = params[:page].to_i
		end

		startx = (page - 1) * rows

		#ordering (jika parameter sortx ada, maka ini dijalankan)
		if(sortx)
			ordexx = sortx+" "+orderx
		else 
			orderxx = "id desc"
		end

		#semua data
		total = VIndikator.all.size

		@indikators = VIndikator.order(ordexx).limit(rows).offset(startx)
		@indikator_list = @indikators.map do |u|
			{ 
				:id => u.id, 
				:bidang_id => u.bidang_id, 
				:nama_bidang => u.nama_bidang, 
				:jenis_pelayanan_id => u.jenis_pelayanan_id, 
				:jenis_pelayanan_nama => u.jenis_pelayanan_nama, 
				:nama_indikator => u.nama_indikator,
				:nilai_default => u.nilai_default,
				:batas_waktu_default => u.batas_waktu_default
			}
		end

		arrdta = {"total"=>total,"rows"=>@indikator_list}

		json = arrdta.to_json
		
		render json: json
	end #grid_data

	def child
		@indikator_id = params[:itemid]
	end #child

	def child_datax
		indikator_id = params[:indikator_id]
		rows = params[:rows].to_i
		sortx = params[:sort]
		orderx = params[:order]

		#mencari offset
		if(!params[:page])
			page = 1
		else
			page = params[:page].to_i
		end

		startx = (page - 1) * rows

		#ordering (jika parameter sortx ada, maka ini dijalankan)
		if(sortx)
			ordexx = sortx+" "+orderx
		else 
			orderxx = "id desc"
		end

		#semua data
		total = Varx.where('indikator_id = ?', indikator_id.to_i).size

		@datas = Varx.where('indikator_id = ?', indikator_id.to_i).order(ordexx).limit(rows).offset(startx)
		@data_list = @datas.map do |u|
			{ :id => u.id, :var_nama => u.var_nama, :satuan => u.satuan, :keterangan => u.keterangan }
		end

		arrdta = {"total"=>total,"rows"=>@data_list}

		json = arrdta.to_json
		
		render json: json
	end #child_data

	def child_data
		indikator_id = params[:indikator_id]

		@datas = Varx.where('indikator_id = ?', indikator_id.to_i)
		@data_list = @datas.map do |u|
			{ :id => u.id, :var_nama => u.var_nama, :satuan => u.satuan, :keterangan => u.keterangan }
		end

		arrdta = {"rows"=>@data_list}

		json = arrdta.to_json
		
		render json: json
	end #child_data


	def child_data_insert
		@vardat = Varx.new
		@vardat.indikator_id = params[:indikator_id]
		@vardat.var_nama = params[:var_nama]
		@vardat.satuan = params[:satuan]
		@vardat.keterangan = params[:keterangan]
		@vardat.save
		render inline: "success"
	end #child_data_insert

	def child_data_update
		@vardat = Varx.find(params[:id])
		@vardat.indikator_id = params[:indikator_id]
		@vardat.var_nama = params[:var_nama]
		@vardat.satuan = params[:satuan]
		@vardat.keterangan = params[:keterangan]
		@vardat.save
		render inline: "success"
	end #child_data_insert

	def child_data_destroy
		id = params[:id]
		Varx.where(id: id).destroy_all
		render inline: "success"
	end #child_data_destroy

end
