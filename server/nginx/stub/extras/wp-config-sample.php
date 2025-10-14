<?php
/**
 * The base configuration for WordPress
 */
define( 'DB_NAME',     'database_name_here' );
define( 'DB_USER',     'username_here' );
define( 'DB_PASSWORD', 'password_here' );
define( 'DB_HOST',     '127.0.0.1' );
define( 'DB_CHARSET',  'utf8mb4' );
define( 'DB_COLLATE',  '' );

/**
 * Database table prefix.
 */
$table_prefix = 'wpmu_';

/**
 * WordPress language.
 */
define( 'WPLANG', 'id_ID' );

/**
 * Authentication Unique Keys and Salts.
 */
define( 'AUTH_KEY',         'put your unique phrase here' );
define( 'SECURE_AUTH_KEY',  'put your unique phrase here' );
define( 'LOGGED_IN_KEY',    'put your unique phrase here' );
define( 'NONCE_KEY',        'put your unique phrase here' );
define( 'AUTH_SALT',        'put your unique phrase here' );
define( 'SECURE_AUTH_SALT', 'put your unique phrase here' );
define( 'LOGGED_IN_SALT',   'put your unique phrase here' );
define( 'NONCE_SALT',       'put your unique phrase here' );
define( 'WP_CACHE_KEY_SALT', NONCE_SALT);

/**
 * For developers: WordPress debugging mode and Multiuser.
 */
define('WP_CACHE',             true);
define('WP_DEBUG',             false);
define('WP_DEBUG_LOG',         true);
define('WP_DEBUG_DISPLAY',     false);
define('WP_AUTO_UPDATE_CORE',  true);
define('WP_POST_REVISIONS',    false);
define('WP_ALLOW_REPAIR',      true);
define('MEDIA_TRASH',          false);
define('IMAGE_EDIT_OVERWRITE', true);
define('DISABLE_NAG_NOTICES',  true);
define('DISABLE_WP_CRON',      false);
define('DISALLOW_FILE_EDIT',   true);
define('FORCE_SSL_ADMIN',      false);
define('FORCE_SSL_LOGIN',      false);
define('AUTOSAVE_INTERVAL',    300);
define('EMPTY_TRASH_DAYS',     0);
define('WP_MAX_MEMORY_LIMIT', '256M');
define('WP_MEMORY_LIMIT',     '128M');
define('FS_METHOD',         'direct');

// ----------------------------------------------------------------------------
// Enable WordPress Multisite / WP-MU
// ----------------------------------------------------------------------------
// define('WP_ALLOW_MULTISITE',   true); // Just enable this line in step 1
// ----------------------------------------------------------------------------
// define('MULTISITE', true);
// define('SUBDOMAIN_INSTALL', true);
// define('DOMAIN_CURRENT_SITE', 'example.com');
// define('PATH_CURRENT_SITE', '/');
// define('SITE_ID_CURRENT_SITE', 1); // Replace to 2 when already configured
// define('BLOG_ID_CURRENT_SITE', 1); // Replace to 2 when already configured
// define('NOBLOGREDIRECT', 'https://example.com/site-not-found?domain='.$_SERVER['HTTP_REFERER']);
// define('SUNRISE', 'on'); // Uncomment untuk aktifkan custom domain mapping
// ----------------------------------------------------------------------------

/**
 * SMTP configuration.
 * SES-SMTPUser-Somebody
 */
// define( 'SMTP_HOST',   'smtp.gmail.com' );
// define( 'SMTP_USER',   'your_email_username' );
// define( 'SMTP_PASS',   'your_email_password' );
// define( 'SMTP_FROM',   'noreply@example.com' );
// define( 'SMTP_NAME',   'Admin Website' );
// define( 'SMTP_PORT',   '587' );
// define( 'SMTP_SECURE', 'tls' );
// define( 'SMTP_AUTH',    true );
// define( 'SMTP_DEBUG',   0 );

/**
 * WP Disable Comments Plugin
 * https://id.wordpress.org/plugins/disable-comments/
 */
// define('DISABLE_COMMENTS_REMOVE_COMMENTS_TEMPLATE', false);
// define('DISABLE_COMMENTS_ALLOW_DISCUSSION_SETTINGS', true);

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
    define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );

/**
 * SMTP Mailer
 */
add_action('phpmailer_init', 'send_smtp_email');
function send_smtp_email($phpmailer)
{
    $phpmailer->isSMTP();
    $phpmailer->Host = SMTP_HOST;
    $phpmailer->SMTPAuth = SMTP_AUTH;
    $phpmailer->Port = SMTP_PORT;
    $phpmailer->Username = SMTP_USER;
    $phpmailer->Password = SMTP_PASS;
    $phpmailer->SMTPSecure = SMTP_SECURE;
    $phpmailer->From = SMTP_FROM;
    $phpmailer->FromName = SMTP_NAME;
}

/**
 * Global favicon
 */
function site_favicon_hook() {
    echo '<link rel="shortcut icon" href="'.site_url('/favicon.ico').'" />';
    echo '<link rel="icon" type="image/png" href="'.site_url('/favicon.png').'" />';
    echo '<link rel="icon" type="image/x-icon" href="'.site_url('/favicon.ico').'" />';
    echo '<link rel="icon" type="image/x-icon" sizes="16x16 32x32" href="'.site_url('/favicon.ico').'" />';
}
add_action('admin_head', 'site_favicon_hook');
add_action('wp_head', 'site_favicon_hook');

/**
 * Force using Jetpack SSO and then disable
 * login by using username and password.
 */
// add_filter( 'jetpack_sso_bypass_login_forward_wpcom', '__return_true' );
// remove_filter( 'authenticate', 'wp_authenticate_email_password', 20 );
// remove_filter( 'authenticate', 'wp_authenticate_username_password', 20);
