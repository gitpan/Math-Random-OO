use Module::Build;
# See perldoc Module::Build for details of how this works

Module::Build->new
    ( module_name     => 'Math::Random::OO',
      create_makefile_pl => "traditional",
      license         => 'perl',
    requires => {
        perl => 5.006,
        Attribute::Util => 0.02,
        base => 2.06, # (unknown ver since perl 5.005, 2.06 since perl 5.008005)
        Params::Validate => 0.76,
    },
    build_requires => {
        Test::Distribution => 1.18,
        Test::Exception => 0.20,
        Test::MockRandom => 0.95,
        Test::More => 0.6, # (0.41 since perl 5.007003, 0.6 is new)
        Test::Number::Delta => 0.14,
        Test::Pod => 1.20,
        Test::Pod::Coverage => 1.06,
    },
	)->create_build_script;
