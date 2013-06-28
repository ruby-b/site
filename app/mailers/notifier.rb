# coding: utf-8
class Notifier < ActionMailer::Base
  default from: "no-reply@ruby-b.com"

  def entry_mail(entry)
    @entry = entry
    mail(:to => @entry.email, :subject => "[#{@entry.event.title}] お申し込み完了通知") do |format|
      format.text
    end
  end
end
