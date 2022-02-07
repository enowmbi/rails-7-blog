require "rails_helper"

RSpec.describe CommentNotifierMailer, type: :mailer do
  describe "notify_post_owner" do
    let(:mail) { CommentNotifierMailer.notify_post_owner }

    it "renders the headers" do
      expect(mail.subject).to eq("Notify post owner")
      expect(mail.to).to eq(["to@example.org"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body" do
      expect(mail.body.encoded).to match("Hi")
    end
  end

end
