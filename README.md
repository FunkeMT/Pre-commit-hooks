# git Hooks

## pre-commit-Hooks

### Installation

#### Automatic

1) Clone the repository

2) Execute in the `syso-ss17-grp11/hooks` folder

   ```
   sh ./copy-hooks.sh
   ```

3) The ```pre-commit-styleC``` hook checks and clean ```.c|.h``` files

4) The ```pre-commit-stylePY``` hook abort the commit and print the errors

#### Manual

1) Clone the repository

2) Copy all scripts into your repository ```/path/to/repository/.git/hooks/```

   - ```pre-commit```
   - ```pre-commit-stylePY```
   - ```pre-commit-styleC```
    
3) Make sure the scripts are executable

   ```
   -rwxrwx--- 1 root root 1834 Oct 23 18:08 pre-commit
   -rwxrwx--- 1 root root 1135 Oct 23 18:08 pre-commit-styleC
   -rwxrwx--- 1 root root 1969 Oct 23 18:08 pre-commit-stylePY
   ```

4) The ```pre-commit-styleC``` hook checks and clean ```.c|.h``` files

5) The ```pre-commit-stylePY``` hook abort the commit and print the errors

