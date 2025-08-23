module.exports = () => ({
    email: {
        config: {
          provider: 'sendmail',
          providerOptions: {},
          settings: {
            defaultFrom: 'no-reply@example.com',
            defaultReplyTo: 'no-reply@example.com',
          },
        },
      },
});
