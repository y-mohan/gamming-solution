class ExportInXml

  def self.in_xml
    folder_path = "#{Rails.root}/public/XML"
    FileUtil.mkdir_p folder_path
    User.all.each do | i |
      File.open("#{folder_path}/#{i.id}.xml", "a+") do | file |
        file.write(User.connection.select_one("select * from users where id = '#{i.id}'").to_xml)
        file.close
      end
    end
  end

end
