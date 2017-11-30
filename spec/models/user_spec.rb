require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'database' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :email }
    it { is_expected.to have_db_column :encrypted_password }
  end

  describe 'factory' do
    it 'is valid' do
      expect(FactoryBot.create(:user)).to be_valid
    end
  end

  describe 'mailbox' do
    before do
      @sender = User.create(name: "Alfred", email: "whatever@whatever.com", password: "whatever")
      @recipient = User.create(name: "Alfrod", email: "whatever@whatover.com", password: "whatover")
      @sender.send_message(@recipient, 'message', 'subject')
    end

    it 'mailbox is created' do
      #binding.pry
      expect(@sender.mailbox).to be_truthy
    end

    it 'recipient has gotten a message' do
      expect(@recipient.mailbox.inbox.count).to eq 1
    end

    it 'message has a subject' do
      expect(@recipient.mailbox.inbox.last.subject).to eq 'subject'
    end
  end
end
