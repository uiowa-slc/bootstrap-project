<?php
use SilverStripe\CMS\Model\SiteTree;
use SilverStripe\View\ArrayData;
use SilverStripe\View\Parsers\ShortcodeParser;
use SilverStripe\View\Parsers\URLSegmentFilter;
use SilverStripe\View\SSViewer;

class Shortcodes {

	public static function ExpandShortcode($arguments, $content = null, $parser = null, $tagName) {

		$template = new SSViewer('Shortcodes/ExpandShortcode');
		$title = false;
		$image = false;

		//Get expander content from another page:
		if (isset($arguments['page'])) {
			if (is_numeric($arguments['page'])) {
				$page = SiteTree::get()->filter(array('ID' => $arguments['page']))->First();
			}

			if ($page) {
				//Reparse shortcodes when getting content from another page since we're acting in a shortcode itself right now.
				$parser = ShortcodeParser::get();
				$parsedContent = $parser->parse($page->Content);
				$content = $parsedContent;
			}
		}

		if (isset($arguments['title'])) {
			$title = $arguments['title'];
		} elseif (isset($page)) {
			$title = $page->Title;
		}

		if (isset($arguments['image'])) {
			$image = $arguments['image'];
		}

		$filter = URLSegmentFilter::create();

		$collapseID = $filter->filter($title);

		$customise = array(
			'ID' => $collapseID,
			'Title' => $title,
			'ImageURL' => $image,
			'Content' => $content,
		);

		return $template->process(new ArrayData($customise));

		//return "<em>" . $tagName . "</em> " . $content . "; " . count($arguments) . " arguments.";
	}

}