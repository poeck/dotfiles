" Options
set smartcase

" Set leader to spacebar
nnoremap <SPACE> <Nop>
let mapleader=" "

" Navigating Windows
nnoremap <leader>h :call VSCodeNotify('workbench.action.navigateLeft')<CR>
nnoremap <leader>j :call VSCodeNotify('workbench.action.navigateDown')<CR>
nnoremap <leader>k :call VSCodeNotify('workbench.action.navigateUp')<CR>
nnoremap <leader>l :call VSCodeNotify('workbench.action.navigateRight')<CR>

" Window 
nnoremap <leader>wv :call VSCodeNotify('workbench.action.splitEditorRight')<CR>
nnoremap <leader>ws :call VSCodeNotify('workbench.action.splitEditorDown')<CR>
nnoremap <leader>wh :call VSCodeNotify('workbench.action.splitEditorDown')<CR>
nnoremap <leader>wq :call VSCodeNotify('workbench.action.closeEditorsAndGroup')<CR>
nnoremap <leader>d :call VSCodeNotify('workbench.action.closeActiveEditor')<CR>

" Tabs
nnoremap <leader>1  :call VSCodeNotify('workbench.action.openEditorAtIndex1')<CR>
nnoremap <leader>2  :call VSCodeNotify('workbench.action.openEditorAtIndex2')<CR>
nnoremap <leader>3  :call VSCodeNotify('workbench.action.openEditorAtIndex3')<CR>
nnoremap <leader>4  :call VSCodeNotify('workbench.action.openEditorAtIndex4')<CR>
nnoremap <leader>5  :call VSCodeNotify('workbench.action.openEditorAtIndex5')<CR>
nnoremap <leader>6  :call VSCodeNotify('workbench.action.openEditorAtIndex6')<CR>
nnoremap <leader>7  :call VSCodeNotify('workbench.action.openEditorAtIndex7')<CR>
nnoremap <leader>8  :call VSCodeNotify('workbench.action.openEditorAtIndex8')<CR>
nnoremap <leader>9  :call VSCodeNotify('workbench.action.openEditorAtIndex9')<CR>

" Other
nnoremap <leader>s :call VSCodeNotify('workbench.action.files.save')<CR>
nnoremap <leader><space>  :call VSCodeNotify('workbench.action.quickOpen')<CR>
nnoremap <leader>f  :call VSCodeNotify('workbench.view.explorer')<CR>
nnoremap <leader>r  :call VSCodeNotify('workbench.action.reloadWindow')<CR>
