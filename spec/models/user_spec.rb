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
      @sender = FactoryBot.create(:user)
      @recipient = FactoryBot.create(:user)
      @sender.send_message(@recipient, 'message', 'subject')
      @conversation = @recipient.mailbox.inbox.first
    end

    it 'mailbox is created' do
      expect(@sender.mailbox).to be_truthy
    end

    it 'receipt is created' do
      expect(@recipient.mailbox.inbox.first.receipts.count).to eq 2
    end

    it 'conversation is created' do
      expect(@recipient.mailbox.conversations.count).to eq 1
    end

    it 'recipient has gotten a message' do
      expect(@recipient.mailbox.inbox.count).to eq 1
    end

    it 'recipient can reply to the message' do
      @recipient.reply_to_conversation(@conversation, 'Hello')
      expect(@sender.mailbox.inbox.count).to eq 1
    end

    it 'message has a subject' do
      expect(@recipient.mailbox.inbox.last.subject).to eq 'subject'
    end

    it 'conversation can be moved to trash' do
      @conversation.mark_as_deleted @recipient
      expect(@recipient.mailbox.inbox.count).to eq 0
    end

    it 'conversation can be unstrashed' do
      @conversation.untrash(@recipient)
      expect(@recipient.mailbox.inbox.count).to eq 1
    end
  end
end
