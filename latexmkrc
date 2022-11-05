push @generated_exts, 'bbl', 'run.xml';
$clean_ext = "%R.run.xml %R.bbl";

$lualatex = 'lualatex -shell-escape -file-line-error';

$pdf_mode = 4;
