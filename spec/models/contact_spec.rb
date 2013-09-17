require 'spec_helper'

describe Contact do
 it { should have_valid(:first_name).when('Liz')}
 it { should_not have_valid(:first_name).when(nil,'') }

 it { should have_valid(:last_name).when('glavin') }
 it { should_not have_valid(:last_name).when(nil,'')}
end
