# This migration comes from better_together (originally 20200922015112)
class RenameGroupsToCommunities < ActiveRecord::Migration[6.0]
  def change
    rename_table :better_together_groups, :better_together_communities
    rename_column :better_together_communities, :group_privacy, :community_privacy
  end
end
