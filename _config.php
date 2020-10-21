<?php

use SilverStripe\Control\Director;
use SilverStripe\Forms\HTMLEditor\TinyMCEConfig;
use SilverStripe\Security\Member;
use SilverStripe\Security\PasswordValidator;
use SilverStripe\View\Parsers\ShortcodeParser;
// remove PasswordValidator for SilverStripe 5.0
$validator = PasswordValidator::create();

// Settings are registered via Injector configuration - see passwords.yml in framework

ShortcodeParser::get('default')->register('expand', ['Shortcodes', 'ExpandShortCode']);

Member::set_password_validator($validator);
if (Director::isLive()) {
	Director::forceSSL();
}

$formats = [

	[
		'title' => 'Buttons', 'items' => [
			[
				'title' => 'Button',
				'inline' => 'span',
				'classes' => 'btn btn-primary',
				'merge_siblings' => true,
			],
		],
	],
];

TinyMCEConfig::get('cms')
	->setContentCSS(['/themes/bootstrap/dist/styles/editor.css'])
	->addButtonsToLine(1, 'styleselect')
	->setOptions([
		'importcss_append' => false,
		'style_formats' => $formats,
	]);