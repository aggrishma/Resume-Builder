json.extract! profile, :id, :name, :job_title, :expereince, :overview, :highlight, :primary_skill, :secondary_skill, :company, :position, :start, :end, :description, :title, :url, :tech_stack, :project_des, :school, :degree, :beg, :last, :edu_des, :created_at, :updated_at
json.url profile_url(profile, format: :json)
