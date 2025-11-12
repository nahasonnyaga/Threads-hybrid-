class EmailService {
  Future<void> sendEmail({required String to, required String subject, required String body}) async {
    // Use SendGrid/Mailgun API or local backend endpoint
    print('Email sent to $to: $subject');
    // In production, integrate with real email provider.
  }
}
