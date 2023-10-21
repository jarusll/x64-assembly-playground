# Syscall table
| Syscall | rax | rdi | rsi | rdx | r10 | r8 | r9 |
|-|-|-|-|-|-|-|-|
| read | 0 | int fd | char* buf | size_t count | - | - | - | - |
| write | 1 | int fd | char* buf | size_t count | - | - | - | - |
| open | 2 | char* filename | int flags | umode_t mode | - | - | - | - |
| exit | 60 | int error_code| - | - | - | - | - | - |

# Enums
## fd (file descriptor)
| fd | value | notes |
|-|-|-|
| 0 | STDIN | |
| 1 | STDOUT | |
| 2 | STDERR | |
| X | File Descriptor | fd of the file you opened |

