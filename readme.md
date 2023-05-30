## EdCordata bash
My personal terminal extensions.


<br/>


#### How to add?
```bash
git clone git@github.com:EdCordata/my_bash.git ~/.my_bash
echo '. ~/.my_bash/init.sh' >> ~/.bash_profile
source ~/.bash_profile
```
Or in one line:
```bash
git clone git@github.com:EdCordata/my_bash.git ~/.my_bash && echo '. ~/.my_bash/init.sh' >> ~/.bash_profile && source ~/.bash_profile
```
```bash
git clone https://github.com/EdCordata/my_bash.git ~/.my_bash && echo '. ~/.my_bash/init.sh' >> ~/.bash_profile && source ~/.bash_profile
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
cd ~/.my_bash && find . -type f -exec dos2unix "{}" \;
```
