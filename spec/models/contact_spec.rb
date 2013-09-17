require 'spec_helper'

describe Contact do
 it { should have_valid(:first_name).when('Liz')}
 it { should_not have_valid(:first_name).when(nil,'') }

 it { should have_valid(:last_name).when('glavin') }
 it { should_not have_valid(:last_name).when(nil,'')}

 it { should have_valid(:email).when('eglavin@gmail.com') }
 it { should_not have_valid(:email).when(nil,'') }

 it { should have_vaild(:subject).when('awesome') }
 it { should_not have_valid(:subject).when(nil,'') }

 it { should have_valid(:description).when('Tell us why we are awesome!')}
 it { should_not have_valid(:description).when(nil,'')}
end
