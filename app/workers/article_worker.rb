class ArticleWorker < ActiveJob::Base
  queue_as :default

  def perform(upload_id, row)
    title, url = row
    agent = Mechanize.new
    agent.get(url)
    body = agent.page.body
    Article.create(upload_id: upload_id, title: title, body: body, url: url)
  end
end
