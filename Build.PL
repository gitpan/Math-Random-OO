use Module::Build;
# See perldoc Module::Build for details of how this works

Module::Build->new
    ( module_name     => 'Math::Random::OO',
      create_makefile_pl => "passthrough",
      license         => 'perl',
	  requires        => {
          Attribute::Util       => 0.02,
          Params::Validate      => 0.74,
          Class::Accessor::Fast => 0.19,
	  },
	  build_requires  => { 
	                       Test::Simple => 0.53,
                           Test::Exception => 0.19,
                           Test::Number::Delta => 0.11,
                           Test::MockRandom => 0.93,
	                     },
	)->create_build_script;
