use ExtUtils::MakeMaker;
use ExtUtils::PkgConfig;

my %elm_pkg_info = ExtUtils::PkgConfig->find('elementary');
my %evas_pkg_info = ExtUtils::PkgConfig->find('evas');

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Efl',
    VERSION_FROM      => 'lib/Efl.pm', # finds $VERSION, requires EU::MM from perl >= 5.5
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
    ABSTRACT_FROM     => 'lib/Efl.pm', # retrieve abstract from module
    AUTHOR            => 'Maximilian Lika <maximilian@>',
    #LICENSE           => 'perl',
    #Value must be from legacy list of licenses here
    #http://search.cpan.org/perldoc?Module%3A%3ABuild%3A%3AAPI
    LIBS          => $elm_pkg_info{'libs'} . $evas_pkg_info{'libs'},
    INC           => '-I. ' . $elm_pkg_info{'cflags'} . $evas_pkg_info{'cflags'}, # e.g., '-I. -I/usr/include/other'
    DEFINE            => '', # e.g., '-DHAVE_SOMETHING'
    XSBUILD => {
	all => {
		LIBS          => $elm_pkg_info{'libs'} . $evas_pkg_info{'libs'},
		INC           => '-Wall -I. ' . $elm_pkg_info{'cflags'} . $evas_pkg_info{'cflags'},
	},
	xs => {
		'lib/Efl/Ecore/EventHandler' => {
			OBJECT => 'lib/Efl/Ecore/EventHandler$(OBJ_EXT) PLSide$(OBJ_EXT)',
		},
		'lib/Efl/Ecore/Evas' => {
			OBJECT => 'lib/Efl/Ecore/Evas$(OBJ_EXT) PLSide$(OBJ_EXT)',
		},
		'lib/Efl/Ecore/Timer' => {
			OBJECT => 'lib/Efl/Ecore/Timer$(OBJ_EXT) PLSide$(OBJ_EXT)',
		},
		'lib/Efl/Ecore/Idler' => {
			OBJECT => 'lib/Efl/Ecore/Idler$(OBJ_EXT) PLSide$(OBJ_EXT)',
		},
		'lib/Efl/Ecore/Poller' => {
			OBJECT => 'lib/Efl/Ecore/Poller$(OBJ_EXT) PLSide$(OBJ_EXT)',
		},
		'lib/Efl/Elm/Entry' => {
			OBJECT => 'lib/Efl/Elm/Entry$(OBJ_EXT) PLSide$(OBJ_EXT)',
		},
		'lib/Efl/Elm/Progressbar' => {
			OBJECT => 'lib/Efl/Elm/Progressbar$(OBJ_EXT) PLSide$(OBJ_EXT)',
		},
		'lib/Efl/Elm/Genlist' => {
			OBJECT => 'lib/Efl/Elm/Genlist$(OBJ_EXT) PLSide$(OBJ_EXT)',
		},
		'lib/Efl/Elm/GenlistItemClass' => {
			OBJECT => 'lib/Efl/Elm/GenlistItemClass$(OBJ_EXT) PLSide$(OBJ_EXT)',
		},
		'lib/Efl/Elm/Layout' => {
			OBJECT => 'lib/Efl/Elm/Layout$(OBJ_EXT) PLSide$(OBJ_EXT)',
		},
		'lib/Efl/Elm/Menu' => {
			OBJECT => 'lib/Efl/Elm/Menu$(OBJ_EXT) PLSide$(OBJ_EXT)',
		},
		'lib/Efl/Elm/Hoversel' => {
			OBJECT => 'lib/Efl/Elm/Hoversel$(OBJ_EXT) PLSide$(OBJ_EXT)',
		},
		'lib/Efl/Elm/Index' => {
			OBJECT => 'lib/Efl/Elm/Index$(OBJ_EXT) PLSide$(OBJ_EXT)',
		},
		'lib/Efl/Elm/Object' => {
			OBJECT => 'lib/Efl/Elm/Object$(OBJ_EXT) PLSide$(OBJ_EXT)',
		},
		'lib/Efl/Elm/Slider' => {
			OBJECT => 'lib/Efl/Elm/Slider$(OBJ_EXT) PLSide$(OBJ_EXT)',
		},
		'lib/Efl/Elm/Ctxpopup' => {
			OBJECT => 'lib/Efl/Elm/Ctxpopup$(OBJ_EXT) PLSide$(OBJ_EXT)',
		},
		'lib/Efl/Elm/Popup' => {
			OBJECT => 'lib/Efl/Elm/Popup$(OBJ_EXT) PLSide$(OBJ_EXT)',
		},
		'lib/Efl/Elm/List' => {
			OBJECT => 'lib/Efl/Elm/List$(OBJ_EXT) PLSide$(OBJ_EXT)',
		},
		'lib/Efl/Elm/Toolbar' => {
			OBJECT => 'lib/Efl/Elm/Toolbar$(OBJ_EXT) PLSide$(OBJ_EXT)',
		},
		'lib/Efl/Elm/ToolbarItem' => {
			OBJECT => 'lib/Efl/Elm/ToolbarItem$(OBJ_EXT) PLSide$(OBJ_EXT)',
		},
		'lib/Efl/Elm/WidgetItem' => {
			OBJECT => 'lib/Efl/Elm/WidgetItem$(OBJ_EXT) PLSide$(OBJ_EXT)',
		},
		'lib/Efl/Evas/Object' => {
			OBJECT => 'lib/Efl/Evas/Object$(OBJ_EXT) PLSide$(OBJ_EXT)',
		},
		'lib/Efl/PLSide' => {
			OBJECT => 'lib/Efl/PLSide$(OBJ_EXT) PLSide$(OBJ_EXT)',
		},
	},
    },
    XSMULTI	=> 1,
    OPTIMIZE => '-g',
	# Un-comment this if you add C files to link with later:
    # OBJECT            => '$(O_FILES)', # link all the C files too
);

require "./CONSTANTS.pl";
