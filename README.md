# .dotfiles
Various dotfiles and configs. Not guaranteed to be 100% working, optimal, or desireable. Please understand I am a chronic config tweaker and am not always as neat as I should be. That being said-- enjoy.

# Dependencies
  + Required: none.
  + Optional: `yay`

# Set-up
#### 1. Clone the repo to your preferred location and enter the root directory
  `git clone https://github.com/OxSon/.dotfiles`
  
  `cd .dotfiles`

#### 2. Update submodules
  `git submodule update --init --recursive`

#### 3. Install 
Note: at this point you may want to edit the config file at `.dotfiles/default.conf.yaml`. Please refer to the excellent project documentation available at [the dotbot project page](https://github.com/anishathalye/dotbot). That being said,
  
  + For a basic install of just config files:
  `./install`
  + For a full-on bootstrapping including installing my preferred packages:
    + From within repo root directory: `sudo dotbot/bin/dotbot -p dotbot-yay/yay.py -c init.conf.yaml`
    
  

❌ ***Known issues***

+ Both the submodule and the taskwarrior syncing functionality I had set up are not working after a handful of machine migrations and no upkeep. Probably there is a better way to handle taskwarrior syncing but seeking one out has not made it to the top of my priorities listJ
