Name:           example
Version:        0.0.0
Release:        1%{?dist}
Summary:        A simple example

License:        AGPLv3
URL:            https://gihub.com/hairmare/createrepo-action-test

#BuildRequires:  
#Requires:       

%description
A simple example.


%install
mkdir -p $RPM_BUILD_ROOT/etc/
echo "# RaBe Config" >> $RPM_BUILD_ROOT/etc/rabe.conf


%files
/etc/rabe.conf

%changelog
* Tue Mar 05 2024 Lucas <hairmare@rabe.ch>
- 
