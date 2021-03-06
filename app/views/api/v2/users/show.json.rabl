object @user

attributes :id, :login, :firstname, :lastname, :mail, :admin, :auth_source_id, :auth_source_name, :last_login_on,
           :domains_andor, :hostgroups_andor, :facts_andor, :filter_on_owner, :compute_resources_andor,
           :created_at, :updated_at

child :auth_source do
  extends "api/v2/auth_source_ldaps/show"
end

child :roles, :object_root => false do
  extends "api/v2/roles/show"
end