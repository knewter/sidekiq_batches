Sidekiq::Enterprise.unique! unless Rails.env.test?
# Sidekiq.configure_server do |config|
#   config.periodic do |mgr|
#     # see any crontab reference for the first argument
#     # e.g. http://www.adminschoice.com/crontab-quick-reference
#     mgr.register('* * * * *', PutsWorker, retry: 2, queue: 'default')
#     # Unsurprisingly, default is the default queue...but you can specify the
#     # queue in your options.
#     #
#     # In general, this is the following:
#     # mgr.register(cron_expression, worker_class, job_options={})
#   end
# end
