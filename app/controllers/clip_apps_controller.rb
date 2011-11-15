class ClipAppsController < ApplicationController
  # GET /clip_apps
  # GET /clip_apps.xml
  def index
    @clip_apps = ClipApp.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @clip_apps }
    end
  end

  # GET /clip_apps/1
  # GET /clip_apps/1.xml
  def show
    @clip_app = ClipApp.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @clip_app }
    end
  end

  # GET /clip_apps/new
  # GET /clip_apps/new.xml
  def new
    @clip_app = ClipApp.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @clip_app }
    end
  end

  # GET /clip_apps/1/edit
  def edit
    @clip_app = ClipApp.find(params[:id])
  end

  # POST /clip_apps
  # POST /clip_apps.xml
  def create
    @clip_app = ClipApp.new(params[:clip_app])

    respond_to do |format|
      if @clip_app.save
        flash[:notice] = 'ClipApp was successfully created.'
        format.html { redirect_to(@clip_app) }
        format.xml  { render :xml => @clip_app, :status => :created, :location => @clip_app }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @clip_app.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clip_apps/1
  # PUT /clip_apps/1.xml
  def update
    @clip_app = ClipApp.find(params[:id])

    respond_to do |format|
      if @clip_app.update_attributes(params[:clip_app])
        flash[:notice] = 'ClipApp was successfully updated.'
        format.html { redirect_to(@clip_app) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @clip_app.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clip_apps/1
  # DELETE /clip_apps/1.xml
  def destroy
    @clip_app = ClipApp.find(params[:id])
    @clip_app.destroy

    respond_to do |format|
      format.html { redirect_to(clip_apps_url) }
      format.xml  { head :ok }
    end
  end
end
