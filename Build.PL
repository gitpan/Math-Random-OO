use Module::Build;
# See perldoc Module::Build for details of how this works

Module::Build->new
    ( module_name     => 'Math::Random::OO',
      create_makefile_pl => "passthrough",
      license         => 'perl',
      requires => {
          perl => 5.006,
          Attribute::Util => 0.02,
          Params::Validate => 0.74,
      },
      build_requires => {
          Test::Distribution => 1.17,
          Test::Exception => 0.19,
          Test::MockRandom => 0.94,
          Test::More => 0.54, 
          Test::Number::Delta => 0.13,
      },
	)->create_build_script;
