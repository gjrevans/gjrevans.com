json.extract! site, :id, :title, :image, :github, :link, :created_at, :updated_at
json.url site_url(site, format: :json)