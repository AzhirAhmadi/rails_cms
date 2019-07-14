ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { I18n.t("active_admin.dashboard") }

  content title: proc { I18n.t("active_admin.dashboard") } do
    
    section "Recent Pages", :priority => 1 do
      table_for Page.order("id desc").limit(20) do
        column :id
        column "Page Title", :title do |page|
          link_to page.title, [:admin, page]
        end
        column :section, :sortable => :section
        column :created_at
      end
    end

    section "Recent Sections", :priority => 1 do
      table_for Section.order("id desc").limit(20) do
        column :id
        column "Section Name", :title do |section|
          link_to section.name, [:admin, section]
        end
        column :created_at
      end
    end
  end
end
