package 'httpd' do
   action :install
end

file '/var/www/html/index.html' do
   content "<h1>Hostname: #{node['hostname']}</h1><p>
	    <h1>IP Address: #{node['ipaddress']}</h1>

"
end

service 'httpd' do
   action [ :enable, :start]
end 
