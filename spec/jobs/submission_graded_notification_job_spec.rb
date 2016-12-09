require 'rails_helper'

RSpec.describe SubmissionGradedNotificationJob, type: :job do
  include ActiveJob::TestHelper

  let!(:participant) { create :participant }
  let(:submission) { create :submission, participant: participant }
  let!(:admin) { create :participant, :admin }

  describe 'executes the job' do
    subject(:job) { described_class.perform_later(submission) }
    it 'queues the job' do
      expect { job }.to change(ActiveJob::Base.queue_adapter.enqueued_jobs, :size).by(1)
    end

    it "send the email" do
      puts 'sending'
      SubmissionGradedNotificationJob.perform_later(submission)
    end
  end

  describe 'supporting methods' do
    subject(:job) { described_class.new }

    it '#admin_ids' do
      expect(job.admin_ids).to match_array([admin.id])
    end

    it '#recipient_ids' do
      expect(job.recipient_ids(submission)).to match_array([admin.id,participant.id])
    end
  end

end
