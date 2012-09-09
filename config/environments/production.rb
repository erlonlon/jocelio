Jocelio::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # Code is not reloaded between requests
  config.cache_classes = true

  # Full error reports are disabled and caching is turned on
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  # Disable Rails's static asset server (Apache or nginx will already do this)
  config.serve_static_assets = false

  # Compress JavaScripts and CSS
  config.assets.compress = true

  # Don't fallback to assets pipeline if a precompiled asset is missed
  config.assets.compile = false

  # Generate digests for assets URLs
  config.assets.digest = true

 
  # Precompile additional assets (application.js, application.css, and all non-JS/CSS are already added)
   config.assets.precompile += %w(layout.css navi.css forms.css tables.css slider.css homepage.css lightbox.css admin/lightbox.css admin/admin.css admin/style.css admin/admin.js jquery-1.7.2.min.js lightbox.js jquery-s3slider.js jquery-s3slider.setup.js )

 
  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners
  config.active_support.deprecation = :notify

 
end
