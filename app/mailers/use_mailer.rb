class UseMailer < ActionMailer::Base
  default(:from => "fenne035@umn.edu")
  def use_email(upload)
    @upload = upload
    mail(:to => "fenne035@umn.edu", :subject => "[steady] #{@upload.name} #{@upload.organization}")
    attachments['upload.csv'] = @upload.csv.read if @upload.csv
  end
end
