namespace :git do
  desc 'Delete the repo directory on server. Useful for when the repo_url changes.'
  task :delete_repo do
    on release_roles :all do
      within deploy_path do
        execute :rm, '-rf', 'repo/'
      end
    end
  end
end
