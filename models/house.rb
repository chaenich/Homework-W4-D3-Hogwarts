require_relative('../db/sql_runner')

class House

  attr_reader :id, :name, :logo_locn

  def initialize(options)
    @id = options['id'].to_i
    @name = options['name']
    @logo_locn = options['logo_locn']
  end

  def save()
    sql = "INSERT INTO houses
    (
      name,
      logo_locn
    )
    VALUES
    (
      $1,
      $2
    )
    RETURNING *"
    values = [@name, @logo_locn]
    house_data = SqlRunner.run(sql, values)
    @id = house_data.first()['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM houses"
    houses = SqlRunner.run(sql)
    result = houses.map { |house| House.new(house)}
    return result
  end

  def self.find(id)
    sql = "SELECT * FROM houses
    WHERE id = $1"
    values = [id]
    house = SqlRunner.run(sql, values)
    result = House.new(house.first)
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM houses"
    SqlRunner.run(sql)
  end

end
