<?php  return '$apiKey = \'AIzaSyBl50Q8W4ZF2_EkOJ1lnRoVxO1IdjIupjM\';
$placeId = \'ChIJb-sUn7Px4joR5tfdECCYM1o\';
$cacheFile = MODX_BASE_PATH . \'assets/cache/google_reviews_cache.json\';
$cacheTtl = 60 * 60 * 6; // 6 hours

// Load from cache if still fresh
if (file_exists($cacheFile) && (time() - filemtime($cacheFile) < $cacheTtl)) {
    $data = json_decode(file_get_contents($cacheFile), true);
} else {
    $url = "https://maps.googleapis.com/maps/api/place/details/json?place_id="
        . urlencode($placeId)
        . "&fields=name,rating,user_ratings_total,reviews,formatted_address,website"
        . "&key=" . urlencode($apiKey);

    $opts = ["http" => ["timeout" => 10]];
    $context = stream_context_create($opts);
    $json = @file_get_contents($url, false, $context);

    if ($json !== false) {
        $data = json_decode($json, true);
        if ($data) {
            file_put_contents($cacheFile, json_encode($data));
        }
    }
}

$output = \'\';
$reviews = $data[\'result\'][\'reviews\'] ?? [];

if (!empty($reviews)) {
    foreach ($reviews as $r) {
        $avatarUrl = $modx->getOption(\'site_url\') . \'assets/components/review_proxy.php?url=\' . urlencode($r[\'profile_photo_url\']);
        $text = htmlspecialchars($r[\'text\'] ?? \'\');
        $name = htmlspecialchars($r[\'author_name\'] ?? \'Anonymous\');
        $rating = intval($r[\'rating\'] ?? 0);
        $time = htmlspecialchars($r[\'relative_time_description\'] ?? \'\');

        // Create star rating icons
        $stars = str_repeat(\'<i class="bi bi-star-fill text-warning"></i>\', $rating);
        $stars .= str_repeat(\'<i class="bi bi-star text-warning"></i>\', 5 - $rating);

        $output .= \'
        <div class="swiper-slide">
          <div class="testimonial-item">
            <p>
              <i class="bi bi-quote quote-icon-left"></i>
              \' . $text . \'
              <i class="bi bi-quote quote-icon-right"></i>
            </p>
            <div class="profile mt-auto">
              <img src="\' . $avatarUrl . \'" class="testimonial-img" alt="\' . $name . \'">
              <h3>\' . $name . \'</h3>
              <h4>\' . $stars . \' &nbsp; <small class="text-muted">\' . $time . \'</small></h4>
            </div>
          </div>
        </div>\';
    }
} else {
    $output = \'<div class="swiper-slide"><p class="text-center">No reviews available yet.</p></div>\';
}

return $output;
return;
';