class HomePage 
    include Capybara::DSL

    def go_home
        visit '/'
        find('a[href="/treinamento/home"]').click
    end

    def system_home_screen_accessed
        page.has_css?('.collapsible-accordion')
    end

    def system_url_accessed
        page.has_current_path?('https://automacaocombatista.herokuapp.com/treinamento/home', url: true)
    end
end