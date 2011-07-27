class Admin::EssenceAudiosController < AlchemyController
  
  ssl_required :update
  
  filter_access_to :update
  
  def update
    @essence_audio = EssenceAudio.find(params[:id])
    @essence_audio.update_attributes(params[:essence_audio])
    render :update do |page|
      page << "Alchemy.closeCurrentWindow(); Alchemy.reloadPreview()"
    end
  end
  
end