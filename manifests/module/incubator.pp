# @summary
#   Installs and enables the incubator module.
#
# @note If you want to use `git` as `install_method`, the CLI `git` command has to be installed. You can manage it yourself as package resource or declare the package name in icingaweb2 class parameter `extra_packages`.
#
# @param [Enum['absent', 'present']] ensure
#   Enable or disable module. Defaults to `present`
#
# @param [String] git_repository
#   Set a git repository URL. Defaults to github.
#
# @param [String] git_revision
#   Set either a branch or a tag name, eg. `stable/0.7.0` or `v0.7.0`.
#
class icingaweb2::module::incubator(
  String                      $git_repository,
  String                      $git_revision,
  Enum['absent', 'present']   $ensure         = 'present',
){

  icingaweb2::module { 'incubator':
    ensure         => $ensure,
    git_repository => $git_repository,
    git_revision   => $git_revision,
  }

}
