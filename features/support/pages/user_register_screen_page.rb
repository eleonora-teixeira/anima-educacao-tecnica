class CadastroUsuario
    include Capybara::DSL

    def access_register_user_screen
        visit '/treinamento/home'
        find(:xpath, '/html/body/div[2]/div[1]/ul/li[1]/a').click
        find('a[href="/users/new"]').click
    end

    def fill_form_information(name, lastname, email, address, university, profession, gender, age)
        find('#user_name').set name
        find('#user_lastname').set lastname
        find('#user_email').set email
        find('#user_address').set address
        find('#user_university').set university
        find('#user_profile').set profession
        find('#user_gender').set gender
        find('#user_age').set age
    end

    def create_user
        find('.green').click
    end

    def feedback_message(msg)
        page.has_text?(msg)
    end

    def back_screen
        find('.red').click
    end

end