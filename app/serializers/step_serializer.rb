class StepSerializer
  include FastJsonapi::ObjectSerializer
  attributes :key, :header, :materials, :time, :directions, :project_id
end
