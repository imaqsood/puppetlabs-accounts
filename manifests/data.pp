# Class: accounts::data
#
#   This is the default set of data provided to with the accounts module.
#   Customers should define their own data class and configure the accounts
#   module using the top level $param_accounts_data_namespace variable, or
#   setting the class parameter when declaring the module.
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
# Make a copy of this class into your "site" module (Don't edit this class itself)
# and reconfigure the accounts module to use your data rather than it's own by
# specifying the namespace to lookup data in.
#
# node default {
#   class { 'accounts':
#     data_namespace => 'site::accounts::data',
#   }
# }
#
class accounts::data {
  # The groups_hash defines "shared" supplementary groups.
  $groups_hash = { }

  # If a account specified in the $users_hash does not have one of these
  # parameters defined, the parameters here will be used.  This provides a way
  # to set default data in a hierarchical manner.
  $users_hash_default = {
    ensure   => 'present',
    password => '!!',
    shell    => '/bin/bash',
  }

  # These are the actual accounts on the system to manage
  $users_hash = { }
}
