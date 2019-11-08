FROM ubuntu:16.04
 
# Install services, packages and do cleanup
RUN apt-get update \
 && apt-get install -y \
    apache2 
Add index2.html /var/www/html/ 
 
# Expose Apache
EXPOSE 80
 
# Launch Apache
CMD ["/usr/sbin/apache2ctl", "-DFOREGROUND"]
