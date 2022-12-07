Describe "wc.rb" do
  # cat ./setting.json | jq '.constants.message'
  # cat ./setting.json | jq '.constants.win'
  # cat ./setting.json | jq '.constants.lose'
  # cat ./setting.json | jq '.constants.error'

  Describe "Error Pattern"
    It 'should error message when call with no option'
      When run ./wc
      The output should equal "Input correctly"
    End

    It 'should error message when call with no option'
      When run ./wc -w r
      The output should equal "Input correctly"
    End

    It 'should error message when call with no option'
      When run ./wc -wrong option
      The output should equal "Input correctly"
    End

    It 'should error message when call with no option'
      When run ./wc --wrong
      The output should equal "I don't know any countries like that, so the world is bigger than I thought."
    End

    It 'should error message when call with invalid option'
      When run ./wc -a
      The output should equal "I don't know any countries like that, so the world is bigger than I thought."
    End
  End

  Describe "Germay"
    It 'should win message when call with germany option'
      When run ./wc -g
      The output should equal "Japan win!"
    End

    It 'should win message when call with germany option'
      When run ./wc --germany
      The output should equal "Japan win!"
    End
  End

  Describe "CostaRica"
    It 'should win message when call with germany option'
      When run ./wc -c
      The output should equal "Japan lose..."
    End

    It 'should win message when call with germany option'
      When run ./wc --costarica
      The output should equal "Japan lose..."
    End
  End

  Describe "Spain"
    It 'should win message when call with germany option'
      When run ./wc -s
      The output should equal "Japan win!"
    End

    It 'should win message when call with germany option'
      When run ./wc --spain
      The output should equal "Japan win!"
    End
  End
End

