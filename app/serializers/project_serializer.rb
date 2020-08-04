class ProjectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :key, :name, :materials, :total_time, :blog, :steps
end
