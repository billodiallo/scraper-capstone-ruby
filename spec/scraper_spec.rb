require_relative '../lib/scraper'

RSpec.describe Scraper do
  let(:scraper1) { Scraper.new('billodiallo') }

  describe '#initialize' do
    it 'should be initialied with a valid Github Username' do
      expect(scraper1.valid).to be true
    end
    let(:scraper2) { Scraper.new('amanioopqqzz') }
    it 'should return false when username is invalid' do
      expect(scraper2.valid).to be false
    end
  end

  describe '#name' do
    it 'should get scrapped name and set it to user name' do
      result = scraper1.send(:name)
      expect(result).to eq(' Billo Diallo')
    end
    it 'negative scenario' do
      result = scraper1.send(:name)
      expect(result).not_to eq(' mamadou')
    end
  end

  describe '#nickname' do
    it 'should get scrapped nickname and set it to user nickname' do
      result = scraper1.send(:nickname)
      expect(result).to eq('billodiallo')
    end
    it 'negative scenario  user another nickname' do
      result = scraper1.send(:nickname)
      expect(result).not_to eq('arikarim')
    end
  end

  describe '#work' do
    it 'should get scrapped work and set it to user work' do
      result = scraper1.send(:work)
      expect(result).to eq('Microverse')
    end
    it 'negative scenario user work' do
      result = scraper1.send(:work)
      expect(result).not_to eq('freelancer')
    end
  end

  describe '#location' do
    it 'should get scrapped location and set it to user location' do
      result = scraper1.send(:location)
      expect(result).to eq('Nairobi')
    end
    it 'negative scenario for  location' do
      result = scraper1.send(:location)
      expect(result).not_to eq('lagos')
    end
  end

  describe '#website' do
    it 'should get scrapped website and set it to user website' do
      result = scraper1.send(:website)
      expect(result).to eq('https://www.linkedin.com/in/mabillodiallo/')
    end
    it 'negative scenario for another website' do
      result = scraper1.send(:website)
      expect(result).not_to eq('www.facebook.com')
    end
  end

  describe '#bio' do
    it 'should get scrapped bio and set it to user bio' do
      result = scraper1.send(:bio)
      expect(result).not_to eq('Full stack Web DeveloperHTML & CSS ,Ruby on Rails, JavaScript and React) and Cloud Computing, AWS')
    end
  end

  describe '#pinned_repos' do
    it 'should get scrapped pinned repos and set it to user pinned repos' do
      result = scraper1.send(:pinned_repos)
      expect(result).to include('awaards')
    end
    it 'negative scenario for pinned' do
      result = scraper1.send(:pinned_repos)
      expect(result).not_to include('javamaia')
    end

    it 'should return an array of pinned repositories' do
      result = scraper1.send(:pinned_repos)
      expect(result).to be_an Array
    end
  end

  describe '#profile_info' do
    it 'should add all user info to an array' do
      expect(scraper1.profile_info).to be_an Array
    end
    it 'negative scenario profile_info' do
      expect(scraper1.profile_info).not_to eql(Array)
    end

    it 'returned array should include user info' do
      result = scraper1.profile_info
      expect(result).not_to eql('[" Billo Diallo", "billodiallo", "Full stack Web DeveloperHTML & CSS ,Ruby on Rails, JavaScript and R... 0, 0, 0, 67, 0, 0, "NYTproject", "awaards", "TNW-Project", "newsweek2020", "instagramapp", "Pitch"] ')
    end
  end

  describe '#counters' do
    it 'should get scrapped number of each category and add it to user summary array' do
      result = scraper1.send(:counters)
      expect(result).to be_an Array
    end
    it 'negative scenario' do
      result = scraper1.send(:counters)
      expect(result).not_to eql(Array)
    end

    it 'returned array should include numbers of each category' do
      result = scraper1.send(:counters)
      expect(result.any?(Integer)).to be true
    end
    it 'negative scenario' do
      result = scraper1.send(:counters)
      expect(result.any?(Integer)).not_to be false
    end
  end

  describe '#page' do
    it 'should return error if category is invalid' do
      expect(scraper1.page('shopping')).to eq(['Error!, category invalid'])
    end
    it 'negative scenario' do
      expect(scraper1.page('shopping')).not_to eq(['try again'])
    end

    it 'should return an array if valid' do
      expect(scraper1.page('repositories')).to be_an Array
    end
    it 'negative scenario' do
      expect(scraper1.page('repositories')).not_to eql(Array)
    end

    it 'returned array should include category items' do
      result = scraper1.page('repositories')
      expect(result).not_to include('TNW-Project')
    end
  end

  describe '#repos' do
    it 'should get scrapped user repos and add them to an array' do
      result = scraper1.send(:page, 'repositories')
      expect(result).to be_an Array
    end
  end

  describe '#stars' do
    it 'should get scrapped user stars and add them to an array' do
      result = scraper1.send(:page, 'stars')
      expect(result).to be_an Array
    end
  end

  describe '#followers' do
    it 'should get scrapped user followers and add them to an array' do
      result = scraper1.send(:page, 'followers')
      expect(result).to be_an Array
    end
    it 'negative scenario' do
      result = scraper1.send(:page, 'followers')
      expect(result).not_to eql(Array)
    end

    it 'negative scenario' do
      result = scraper1.send(:page, 'another')
      expect(result).not_to eql(Array)
    end
  end

  describe '#following' do
    it 'should get scrapped user following and add them to an array' do
      result = scraper1.send(:page, 'following')
      expect(result).to be_an Array
    end
    it 'negative scenario' do
      result = scraper1.send(:page, 'following')
      expect(result).not_to eql(Array)
    end
  end
end
