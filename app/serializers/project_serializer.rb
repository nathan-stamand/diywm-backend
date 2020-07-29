class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :materials, :total_time, :blog, :steps
end
