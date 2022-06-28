comment on schema auth is 'Schema required by Hasura Auth to work. Don''t modify its structure as Hasura Auth relies on it to function properly.';
comment on table auth.migrations is 'Internal table for tracking migrations. Don''t modify its structure as Hasura Auth relies on it to function properly.';
comment on column auth.migrations.id is 'Unique identifier for the migration.';
comment on column auth.migrations.name is 'Name of the migration.';
comment on column auth.migrations.hash is 'Hash of migrations files. Hasura Auth will fail if the value does not match the hash of the files in the migrations directory.';
comment on column auth.migrations.executed_at is 'Timestamp on when the migration was executed.';
comment on table auth.provider_requests is 'Oauth requests, inserted before redirecting to the provider''s site. Don''t modify its structure as Hasura Auth relies on it to function properly.';
comment on column auth.provider_requests.id is 'Unique identifier for the request.';
comment on column auth.provider_requests.options is 'Request options collected from request parameters and stored as JSON. Is reused when the provider''s site calls back to Hasura Auth.';
comment on table auth.providers is 'List of available Oauth providers. Don''t modify its structure as Hasura Auth relies on it to function properly.';
comment on column auth.providers.id is 'String identifier for the provider.';
comment on table auth.roles is 'Persistent Hasura roles for users. Don''t modify its structure as Hasura Auth relies on it to function properly.';
comment on column auth.roles.role is 'Role name, as per Hasura permissions.';
comment on table auth.users is 'User account information. Don''t modify its structure as Hasura Auth relies on it to function properly.';
comment on column auth.users.id is 'Auto-generated unique identifier for the user.';
comment on column auth.users.created_at is 'Auto-generated timestamp for when the user was created.';
comment on column auth.users.updated_at is 'Auto-generated timestamp for when the user was last updated.';
-- TODO only partially implemented - last_seen should be updated every time a JWT is generated for the user
comment on column auth.users.last_seen is 'Timestamp on when an access token has been created for the user.';
comment on column auth.users.disabled is 'Disabled users cannot sign in.';
comment on column auth.users.display_name is 'User display name, populated on sign-up either from the options sent in the http payload, or from the provider when signing up with Oauth. Falls back to the email when not provided.';
comment on column auth.users.avatar_url is 'The URL of the user''s avatar. Populated on sign-up when Gravatar integration is enabled.';
comment on column auth.users.locale is 'Two-digits language code for the user''s preferred language.';
comment on column auth.users.email is 'User email address.';
comment on column auth.users.phone_number is 'User phone number.';
comment on column auth.users.password_hash is 'User password hashed with bcrypt.';
comment on column auth.users.email_verified is 'Is true when the user''s email address has been verified with a link sent by email.';
comment on column auth.users.phone_number_verified is 'Is true when the user''s phone number has been verified with code sent by SMS.';
comment on column auth.users.new_email is 'Tentative new email address, used to verify the new email address.';
comment on column auth.users.otp_method_last_used is 'Last used OTP method for the user.';
comment on column auth.users.otp_hash is 'One-time password hashed with bcrypt, used to verify the user''s phone number.';
comment on column auth.users.otp_hash_expires_at is 'One-time password hash expiration timestamp.';
comment on column auth.users.default_role is 'The user''s default role to be used in the x-hasura-default-role JWT claim.';
comment on column auth.users.is_anonymous is 'Is true when the user is anonymous.';
comment on column auth.users.totp_secret is 'Auto-generated secret for the user''s multi-factor authentication.';
comment on column auth.users.active_mfa_type is 'Active multi-factor authentication type. One of: NULL, totp.';
comment on column auth.users.ticket is 'Tickets are used to perform verifications through transactional emails.';
comment on column auth.users.ticket_expires_at is 'Timestamp on when the ticket expires.';
comment on column auth.users.metadata is 'Custom JSON data for the user that can be sent when the user signs up.';
comment on table auth.refresh_tokens is 'User refresh tokens. Hasura auth uses them to rotate new access tokens as long as the refresh token is not expired. Don''t modify its structure as Hasura Auth relies on it to function properly.';
comment on column auth.refresh_tokens.refresh_token is 'Auto-generated refresh token id.';
comment on column auth.refresh_tokens.created_at is 'Auto-generated timestamp for when the refresh token was created.';
comment on column auth.refresh_tokens.expires_at is 'Auto-generated timestamp for when the refresh token will expire.';
comment on column auth.refresh_tokens.user_id is 'User identifier associated with the refresh token.';
comment on table auth.user_providers is 'Active providers for a given user. Don''t modify its structure as Hasura Auth relies on it to function properly.';
comment on column auth.user_providers.id is 'Oauth provider identifier referenced by auth..providers.id.';
comment on column auth.user_providers.created_at is 'Auto-generated timestamp for when the provider was added to the user.';
comment on column auth.user_providers.updated_at is 'Auto-generated timestamp for when this provider''s user was last updated.';
comment on column auth.user_providers.user_id is 'User identifier referenced by auth.users.id.';
comment on column auth.user_providers.access_token is 'Access token given by the provider.';
comment on column auth.user_providers.refresh_token is 'Refresh token given by the provider.';
comment on column auth.user_providers.provider_id is 'Provider identifier referenced by auth.providers.id.';
comment on column auth.user_providers.provider_user_id is 'Unique user identifier determined by the provider.';
comment on table auth.user_roles is 'Roles of users. Don''t modify its structure as Hasura Auth relies on it to function properly.';
comment on column auth.user_roles.id is 'Auto-generated unique identifier for the user role.';
comment on column auth.user_roles.created_at is 'Auto-generated timestamp for when the role was added to the user.';
comment on column auth.user_roles.user_id is 'User identifier referenced by auth.users.id.';
comment on column auth.user_roles.role is 'Role identifier referenced by auth.roles.role.';
