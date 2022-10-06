# Onlia

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/onlia`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'onlia'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install onlia

## Usage

Onlia.configure do |config|
  config.environment = "development"
  config.api_key = "api_token_here"
end

$onlia_client = Onlia::Client.new
$onlia_client.refresh_token
$onlia_client.get_quote(
  {
    "product": {
      "auto": {
        "purchaseDate": "2021-12-20",
        "purchaseConditionCode": 0,
        "vehicleModelYear": 2021,
        "onliaVehicleCode": "192600",
        "yearlyMileage": 9999,
        "businessUsePercentage": 0,
        "distanceHomeWork": 10,
        "postalCode": "M5E1W7",
        "winterTireIndicator": true
      },
      "coverages": [
        {
          "productCoverageCode": 0,
          "amount": 1000000
        },
        {
          "productCoverageCode": 1,
          "amount": 1000
        },
        {
          "productCoverageCode": 2,
          "amount": 500
        }
      ],
      "startDate": "2022-10-24"
    },
    "person": {
      "atFaultAccidentsDetails": [],
      "dateOfBirth": "1989-11-13",
      "drivingLicenseFirstDateOfIssue": "2010-12-13",
      "genderCode": 0,
      "licenseClass": "G",
      "maritalStateCode": 0,
      "numberOfConvictions": 0,
      "postalCode": "M5E1W7",
      "provinceCode": "ON"
    }
  }
)


$onlia_client.auto_lookup(
  { "vin": "xyz" }
)


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/metaware/onlia.

