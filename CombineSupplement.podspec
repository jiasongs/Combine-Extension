Pod::Spec.new do |s|
    s.name                  = "CombineSupplement"
    s.version               = "0.0.1"
    s.summary               = "Combine Extensions"
    s.homepage              = "https://github.com/jiasongs/CombineExtensions"
    s.license               = "MIT"
    s.author                = { "ruanmei" => "jiasong@ruanmei.com" }
    s.source                = { :git => "https://github.com/jiasongs/CombineExtensions.git", :tag => "#{s.version}" }
    s.platform              = :ios, "13.0"
    s.cocoapods_version     = ">= 1.11.0"
    s.swift_versions        = ["5.0"]
    s.static_framework      = true
    s.requires_arc          = true
    s.framework             = "Combine"

    s.subspec "Core" do |ss|
        ss.source_files = "Sources/Core/**/*.{swift}"
    end

    s.subspec "PropertyWrapper" do |ss|
        ss.source_files = "Sources/PropertyWrapper/**/*.{swift}"
    end

    s.subspec "Cancellable" do |ss|
        ss.source_files = "Sources/Cancellable/**/*.{swift}"
        ss.dependency "CombineSupplement/Core"
    end
end