ActiveAdmin.register Feed do
  permit_params :url, :interval_seconds, :should_fetch, :should_show
end
