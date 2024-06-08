require "csv"

class Challenge
  def read_file(file)
    current_file = File.read(file)
    datas = current_file.split("\n").map do |line|
      proccess_data(*line.split('|'))
    end
    to_csv(datas)
  end

  def proccess_data(path_file, duration, artist, title)
    duration = duration.split(':')
    [path_file, duration[0].to_i * 60 + duration[1].to_i, artist.squeeze(" "), title]
  end

  def to_csv(datas)
    headers = %w(path_file duration artist title)
    CSV.open("output.csv", "wb", write_headers: true, headers: headers, row_sep: "\n") do |csv|
      datas.each do |data|
        csv << data
      end
    end
  end
end

Challenge.new.read_file('./file.txt')
