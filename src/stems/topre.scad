$topre_stem_d = 5.7;
$topre_stem_cut_w = 1.5;
$topre_stem_cut_depth = 4;
$topre_stem_wall_thickness = 1;
$topre_stem_h = 10;

module topre_stem() {
  difference(){
    cylinder($fn=60, d=$topre_stem_d, h=$topre_stem_h);

	translate([0, 0, -.5])
		cylinder($fn=60, d=$topre_stem_d-(2*$topre_stem_wall_thickness), h=$topre_stem_h+1);

	cube([$topre_stem_cut_w, $topre_stem_d, 2*$topre_stem_cut_depth], center=true);
  }
}
