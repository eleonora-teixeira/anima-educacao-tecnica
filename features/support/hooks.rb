require 'report_builder'
require 'date'

Before do
   @home_screen = HomePage.new
   @register = CadastroUsuario.new
end

After do
    temp_shot = page.save_screenshot('log/temp_shot.png')
    screenshot = Base64.encode64(File.open(temp_shot, 'rb').read)
    attach(screenshot, 'image/png')
end

d = DateTime.now
@current_date = d.to_s.tr(":","-")
at_exit do
    ReportBuilder.configure do |config|
        config.input_path = 'log/report.json'
        config.report_path = 'log/' + @current_date
        config.report_types = [:html]
        config.report_title = 'Teste Técnico Ânima Educação'
        config.compress_image = true
        config.additional_info = {'App' => 'Web', 'Data de execução' => @current_date}
        config.color = "blue"
    end
    ReportBuilder.build_report
end