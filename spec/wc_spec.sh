Describe "wc.rb" do

  echo "TEST BEGIN"

  cat ./setting.json | jq '.constants.message'
  cat ./setting.json | jq '.constants.win'
  cat ./setting.json | jq '.constants.lose'
  cat ./setting.json | jq '.constants.error'

  It 'ex'
    When run ./wc
    The output should equal "Input correctly"
  End
End

