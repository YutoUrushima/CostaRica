Describe "wc.rb" do

  echo "TEST BEGIN"

  # cat ./setting.json | jq '.constants.message'
  # cat ./setting.json | jq '.constants.win'
  # cat ./setting.json | jq '.constants.lose'
  # cat ./setting.json | jq '.constants.error'

  It 'should error message when call with no option'
    When run ./wc
    The output should equal "Input correctly"
  End

  It 'should win message when call with germany option'
    When run ./wc -g
    The output should equal "Japan win!"
  End
End

