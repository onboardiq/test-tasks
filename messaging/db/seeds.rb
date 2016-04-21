# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

account = Account.first_or_create(name: 'OnboardIQ')

keith = account.users.find_or_create_by(
  name: "Keith", email: "keith@onboardiq.com")
yaroslav = account.users.find_or_create_by(
  name: "Yaroslav", email: "yaroslav@onboardiq.com")

unless SmsMessage.any?
  # Let's create some sample messages to avoid confusion, shall we.

  # First, we replicate the screenshot
  account.sms_messages.create(
    outbound: true, from_number: "4804331197",
    to_number: "8006927753",
    body: "This is a friendly reminder, respond YES or NO",
    created_at: 8.days.ago)
  account.sms_messages.create(
    from_number: "8006927753",
    to_number: "4804331197",
    body: "YES",
    created_at: 7.days.ago)

  # Now, let's do a simple thread with 2 operators, 1 annoyed user and
  # 1 outbound message
  account.sms_messages.create(
    user: keith,
    from_number: "4804331197",
    to_number: "8006927754",
    body: "Hey, so is there any chance we can move that meeting to 10am?",
    created_at: 6.days.ago)
  account.sms_messages.create(
    from_number: "8006927754",
    to_number: "4804331197",
    body: "Who is this? Leave me alone!11",
    created_at: 5.days.ago)
  account.sms_messages.create(
    user: yaroslav,
    from_number: "4804331197",
    to_number: "8006927754",
    body: "This is Yaroslav from OnboardIQ, are you sure you want to unsubscribe? You can send UNSUBSCRIBE any time.",
    created_at: 4.days.ago)
  account.sms_messages.create(
    from_number: "8006927754",
    to_number: "4804331197",
    body: "Stop doing this!!",
    created_at: 3.days.ago)
  account.sms_messages.create(
    from_number: "8006927754",
    to_number: "4804331197",
    body: "UNSUBSCRIBE",
    created_at: 3.days.ago)
  account.sms_messages.create(
    outbound: true,
    from_number: "4804331197",
    to_number: "8006927754",
    body: "You were unsubscribed successfully.",
    created_at: 2.days.ago)

end
