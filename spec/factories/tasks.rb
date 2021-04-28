FactoryBot.define do
  factory :task do
    association :project
    title { 'Task' }
    status { rand(2) }
    from = Date.parse("2019/08/01")
    to   = Date.parse("2019/12/31")
    deadline { Random.rand(from..to) }
  end

  trait :task_to_be_deleted do
    title { 'Task to be deleted' }
  end

  trait :done do
    status { 'done' }
  end

  trait :completed_yesterday do
    completion_date { Time.current.yesterday }
  end
end
