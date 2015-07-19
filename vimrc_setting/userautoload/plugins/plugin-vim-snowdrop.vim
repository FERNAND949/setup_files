
let g:snowdrop#libclang_directory = "/usr/lib/llvm-3.3/lib/"
let g:snowdrop#libclang_file = "libclang.so"
let g:snowdrop#include_paths = {
	\	"cpp" : [
	\ 		"/usr/include/c++/4.8/",
	\		"/usr/include/eigen3/",
	\	]
	\ }
let g:snowdrop#command_options = {
			\   "cpp" : "-std=c++11",
			\}
let g:snowdrop#libclang#default_binding = "python"
let g:snowdrop#goto_definition_open_cmd = "edit"
let g:neocomplete#sources#snowdrop#enable = 1
