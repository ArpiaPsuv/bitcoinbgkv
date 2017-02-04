CREATE TABLE IF NOT EXISTS `btc_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NULL,
  `description` varchar(255) NULL,
  `keywords` varchar(255) NULL,
  `name` varchar(255) NULL,
  `infoemail` varchar(255) NULL,
  `supportemail` varchar(255) NULL,
  `url` varchar(255) NULL,
  `withdrawal_comission` varchar(255) NULL,
  `max_addresses_per_account` int(11) NULL,
  `profits` varchar(255) NULL,
  `email_verification` int(11) NULL,
  `recaptcha_verification` int(11) NULL,
  `recaptcha_publickey` varchar(255) NULL,
  `recaptcha_privatekey` varchar(255) NULL,
  `fb_link` text NULL,
  `tw_link` text NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `btc_blockio_licenses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) NULL,
  `license` varchar(255) NULL,
  `secret_pin` varchar(255) NULL,
  `address` varchar(255) NULL,
  `addresses` int(11) NULL,
  `default_license` int(11) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `btc_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NULL,
  `password` varchar(255) NULL,
  `secret_pin` varchar(255) NULL,
  `email` varchar(255) NULL,
  `email_verified` int(11) NULL,
  `email_hash` text NULL,
  `status` varchar(255) NULL,
  `ip` varchar(255) NULL,
  `time_signup` int(11) NULL,
  `time_signin` int(11) NULL,
  `time_activity` int(11) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `btc_users_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL,
  `label` varchar(255) NULL,
  `address` varchar(255) NULL,
  `lid` int(11) NULL,
  `available_balance` varchar(255) NULL,
  `pending_received_balance` varchar(255) NULL,
  `status` varchar(255) NULL,
  `created` int(11) NULL,
  `updated` int(11) NULL,
  `archived` int(11) NOT NULL DEFAULT  '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `btc_users_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL,
  `type` varchar(255) NULL,
  `recipient` varchar(255) NULL,
  `sender` varchar(255) NULL,
  `amount` varchar(255) NULL,
  `time` int(11) NULL,
  `confirmations` int(11) NULL,
  `txid` text NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `btc_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `source` varchar(255) NULL,
  `price` int(11) NULL,
  `currency` varchar(255) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `btc_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NULL,
  `prefix` varchar(255) NULL,
  `content` text NULL,
  `created` int(11) NULL,
  `updated` int(11) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

INSERT INTO `btc_pages` (`id`, `title`, `prefix`, `content`) VALUES
(1, 'Terms of service', 'terms-of-services', 'Edit from WebAdmin.'),
(2, 'Privacy Policy', 'privacy-policy', 'Edit from WebAdmin.');

CREATE TABLE IF NOT EXISTS `btc_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NULL,
  `answer` text NULL,
  `created` int(11) NULL,
  `updated` int(11) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;