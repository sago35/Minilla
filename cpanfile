requires 'perl' => '5.0120005';
requires 'parent'                        => '0';
requires 'Module::Build' => 0.40;
requires 'Software::License';
requires 'JSON::PP';
requires 'Text::MicroTemplate';
requires 'Class::Accessor::Lite' => 0.05;
requires 'CPAN::Meta::Check';
requires 'CPAN::Uploader';
requires 'Module::Runtime';
requires 'File::Find::Rule';
requires 'Archive::Tar';
requires 'File::HomeDir';
requires 'YAML::Tiny';
requires 'App::cpanminus';
requires 'Module::CPANfile';

# 0.09 is broken.
requires 'git://github.com/tokuhirom/toml.git';
# requires 'TOML';

on 'configure' => sub {
    requires 'Module::Build' => '0.40';
};

on 'test' => sub {
    requires 'Test::More' => '0.98';
    requires 'Test::Requires' => 0;
};

on 'develop' => sub {
    # Dependencies for developers
    recommends 'Test::Kwalitee';
};
