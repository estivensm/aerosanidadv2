require 'brakeman/checks/base_check'

class Brakeman::CheckXMLDoS < Brakeman::BaseCheck
  Brakeman::Checks.add self

  @description = "Checks for XML denial of service (CVE-2015-3227)"

  def run_check
    version = rails_version

    fix_version = case
                  when version_between?("2.0.0", "3.2.21")
                    "3.2.22"
                  when version_between?("4.1.0", "4.1.10")
                    "4.1.11"
                  when version_between?("4.2.0", "4.2.1")
                    "4.2.2"
                  when version_between?("4.0.0", "4.0.99")
                    "4.2.2"
                  when (version.nil? and tracker.options[:rails3])
                    version = "3.x"
                    "3.2.22"
                  when (version.nil? and tracker.options[:rails4])
                    version = "4.x"
                    "4.2.2"
                  else
                    return
                  end

    return if has_workaround?

    message = "Rails #{version} is vulnerable to denial of service via XML parsing (CVE-2015-3227). Upgrade to Rails version #{fix_version}"

    warn :warning_type => "Denial of Service",
      :warning_code => :CVE_2015_3227,
      :message => message,
      :confidence => CONFIDENCE[:med],
      :gem_info => gemfile_or_environment,
      :link_path => "https://groups.google.com/d/msg/rubyonrails-security/bahr2JLnxvk/x4EocXnHPp8J"
  end

  def has_workaround?
    tracker.check_initializers(:"ActiveSupport::XmlMini", :backend=).any? do |match|
      arg = match.call.first_arg
      if string? arg
        value = arg.value
        value == 'Nokogiri' or value == 'LibXML'
      end
    end
  end
end
