# .dotfiles
Various dotfiles and configs. Not guaranteed to be 100% working, optimal, or desireable. Please understand I am a chronic config tweaker and am not always as neat as I should be. That being said-- enjoy.

# Set-up
#### 1. Clone the repo to your preferred location and enter the root directory
  `git clone https://github.com/OxSon/.dotfiles`
  
  `cd .dotfiles`

#### 2. Init & update submodules
  `git submodule init && git submodule update`

#### 3. Install 
  `./install`
  * Note: at this point you may want to edit the config file at `.dotfiles/default.conf.yaml`. Please refer to the excellent project documentation available at [the dotbot project page](https://github.com/anishathalye/dotbot).


---

❌ ***Known issues***

+ Both the submodule and the taskwarrior syncing functionality I had set up are not working after a handful of machine migrations and no upkeep. Probably there is a better way to handle taskwarrior syncing but seeking one out has not made it to the top of my priorities listJ
