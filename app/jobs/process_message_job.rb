class ProcessMessageJob < ApplicationJob
  queue_as :default

  def perform(job)
    logger.info "Processing message #{job.id}"
    m = Message.find( job.id )
    m.processed = true
    m.save
  end
end
