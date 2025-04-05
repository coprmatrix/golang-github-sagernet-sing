s~%global\s+goipath\s+(.*)/(.*)~%global goihead \2\n%global goipath \1/%{goihead}\n%define scom %{?commit}%{?!commit:v%{version}}~g;
s~(Version:)[^0-9\.]*(.*)~\1  \2~g;
s~%gocheck~~g;
s~Source:.*~%define stag %{?tag}%{?!tag:%scom}\nSource: https://%{goipath}/archive/%{stag}/%{goihead}-%{stag}.tar.gz~g;
