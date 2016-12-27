class ContactMailer < ApplicationMailer
  def contact_confirmation(contact)
    @contact = contact
    mail(to: "hello@gjrevans.com", subject: "New Contact Message")
  end
end
