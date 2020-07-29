class StepSerializer
  include FastJsonapi::ObjectSerializer
  attributes :header, :materials, :time, :directions
end
