class LocomotiveEngineer
  def self.generate_list_of_wagons(*wagons)
    wagons
  end

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    after1, after2, locomotive, *wagons1 = each_wagons_id
    [locomotive, *missing_wagons, *wagons1, after1, after2]
  end

  def self.add_missing_stops(terminals, **stops)
    { **terminals, stops: stops.values }
  end

  def self.extend_route_information(route, more_route_information)
    { **route, **more_route_information }
  end
end
