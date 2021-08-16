" Mappings

" Editor: Remove bad habits {{{

" Remove all arrow functionality
nnoremap <Left>  :echoe Move<CR>
nnoremap <Right> :echoe Move<CR>
nnoremap <Up>    :echoe Move<CR>
nnoremap <Down>  :echoe Move<CR>
inoremap <Left>  <ESC>:echoe Move<CR>
inoremap <Right> <ESC>:echoe Move<CR>
inoremap <Up>    <ESC>:echoe Move<CR>
inoremap <Down>  <ESC>:echoe Move<CR>

" Remap to jk to get escape
inoremap jk <Esc>
" Use control-c instead of escape
nnoremap <C-c> <Esc>

" Remove ESC as a mapping, not usable
inoremap <esc> <nop>
" }}}
" Editor: Resize windows {{{

nnoremap <M-J>    :resize -2<CR>
nnoremap <M-K>    :resize +2<CR>
nnoremap <M-H>    :vertical resize -2<CR>
nnoremap <M-L>    :vertical resize +2<CR>

" }}}
" Editor: Navigation {{{

" Remap VIM 0 to first non-blank character
map 0 ^
" Map _ to last non-blank character
nnoremap _ g_

" }}}
" Editor: Move line {{{

nnoremap <M-j> :m .+1<CR>==
nnoremap <M-k> :m .-2<CR>==
inoremap <M-j> <Esc>:m .+1<CR>==gi
inoremap <M-k> <Esc>:m .-2<CR>==gi
vnoremap <M-j> :m '>+1<CR>gv=gv
vnoremap <M-k> :m '<-2<CR>gv=gv

" }}}
" Editor: Save and Quit {{{

" Alternate way to save
nnoremap <C-s> :up<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>

" }}}
" Editor: Tabbing {{{

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" }}}
" Editor: Yank {{{

" add yank from previously yanked and not deleted
nmap ,p "0p
nmap ,P "0P

" }}}
" Editor: Window Navigation {{{

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" }}}
" Editor: Move words {{{

" gw - change word under cursor with next
nnoremap <silent> gw    ma"_yiw:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<cr>`a
" gb - change word under cursor with next
nnoremap <silent> gb    ma"_yiw?\w\+\_W\+\%#<CR>:s/\(\%#\w\+\)\(\_W\+\)\(\w\+\)/\3\2\1/<CR>`a

" }}}
" Editor: Append semicolumn {{{

" Command to add a semicolumn to the end of the line
nnoremap <silent> g;    maA;<esc>`a
nnoremap <silent> g,    maA,<esc>`a
nnoremap <silent> g.    maA.<esc>`a
nnoremap <silent> g:    maA:<esc>`a

" }}}

" Plugin: Coc {{{
" COC Mappings

" Navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> <leader>ldN <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>ldn <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)

" Symbol renaming.
nmap <leader>lrn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>lf  <Plug>(Prettier)
nmap <leader>lf  <Plug>(Prettier)

" Applying codeAction to the selected region.
" Example: `<leader>laap` for current paragraph
xmap <leader>la  <Plug>(coc-codeaction-selected)
nmap <leader>la  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>lac  <Plug>(coc-codeaction)

" Apply AutoFix to problem on the current line.
nmap <leader>lqf  <Plug>(coc-fix-current)

" Use CTRL-S for selections ranges.
" Requires 'textDocument/selectionRange' support of language server.
nmap <silent> <leader>ls <Plug>(coc-range-select)
xmap <silent> <leader>ls <Plug>(coc-range-select)

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <leader>ld  :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <leader>le  :<C-u>CocList extensions<cr>
" Show commands.
nnoremap <silent><nowait> <leader>lc  :<C-u>CocList commands<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <leader>lo  :<C-u>CocList outline<cr>
" Do default action for next item.
nnoremap <silent><nowait> <leader>lj  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <leader>lk  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <leader>lp  :<C-u>CocListResume<CR>
" Use NerdTree available from COC
nnoremap <space>e :CocCommand explorer<CR>

" }}}
" Plugin: Telescope {{{
" TODO: Check if it's worth going back to FZF

" TODO: Use Telescope to grep current word
" Not really needed, i can use g* to find the word in the curent directory
" Grep the under cursor with leader
" nnoremap <leader>g :silent execute "grep! -r " . shellescape(expand("<cword>")) . " ."<cr>:copen<cr>

" TODO: Still need to get a strict search ( ex: grep abc must only match exatcly abc )
" TODO: Figure out why it isn't showing any results most of the times
nnoremap <leader>Gc <cmd>lua require('telescope.builtin').git_bcommits()<cr>
map <C-f> <cmd>lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
nnoremap <leader>fs <cmd>lua require('telescope.builtin').grep_string()<cr>
nnoremap <leader>fh <cmd>lua require('telescope.builtin').git_bcommits()<cr>
nnoremap <leader>C <cmd>lua require('telescope.builtin').colorscheme()<cr>

" }}}
" Plugin: Todo-comments {{{
" Get Telescope TODO list
nnoremap <leader>t :TodoQuickFix<cr>
nnoremap <leader>ft :TodoTelescope<cr>
" }}}
" Plugin: EasyAlign {{{

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" }}}
" Plugin: Fugitive {{{

" Fugitive Conflict Resolution
nnoremap <leader>Gd :Gvdiff<CR>
nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>

" }}}
" Plugin: Ultest {{{
" Test mapping
nnoremap <leader> tn <Plug>(ultest-next-fail)

" }}}
" Plugin: Vifm {{{
nnoremap <leader>m :Vifm<cr>
" }}}
" Plugin: WhichKey {{{

" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" }}}

" Compilation: Cpp {{{
" TODO: Not working properly on ubuntu, i think it works on mac need to double check
autocmd vimEnter *.cpp nnoremap <F8> :w <CR> :split <BAR> !clear ; g++ --std=c++17 %; if [ -f a.out ]; then time ./a.out; rm a.out; fi <CR>
"nmap <leader>r :new | 0read ! ./run.sh
" }}}

" Terminal {{{

" map ESC to exist terminal mode
tnoremap <Esc> <C-\><C-n>

" }}}

" Abbreviation {{{

iabbrev @@    dgoncalves@bsolus.pt

" }}}
