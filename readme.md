## EdCordata bash
My personal terminal extensions.


<br/>


#### How to add?
```bash
cd ~
git clone https://github.com/EdCordata/my_bash.git
echo '. ~/my_bash/init.sh' >> ~/.bash_profile
source ~/.bash_profile
```
Or in one line:
```bash
cd ~ && git clone https://github.com/EdCordata/my_bash.git && echo '. ~/my_bash/init.sh' >> ~/.bash_profile && source ~/.bash_profile
```


<br/>


#### To update, simply run:
```bash
my_bash_update
```

##### Note that all files should be CRLF & UTF-8.
To fix wrong line endings, run:
```bash
sudo apt install -y dos2unix
cd ~/my_bash && find . -type f -exec dos2unix "{}" \;
```
