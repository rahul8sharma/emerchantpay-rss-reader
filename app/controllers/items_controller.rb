class ItemsController < ApplicationController
  before_action :set_item, only: [:show]

  # GET /feeds
  # GET /feeds.json
  def index
    scoped = Item.visible.order('pub_date')
    if params[:feed_id].present?
      @feed = Feed.find(params[:feed_id])
      scoped = scoped.where(feed_id: params[:feed_id])
    end
    @paginator = ReversePagination.new(scoped, params[:page], 10)
  end

  # GET /feeds/1
  # GET /feeds/1.json
  def show
  end

  private
  def set_item
    @item = Item.find(params[:id])
  end
end

