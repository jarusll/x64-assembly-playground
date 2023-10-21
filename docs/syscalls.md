# Syscall table
| Syscall | rax | rdi | rsi | rdx | r10 | r8 | r9 |
|-|-|-|-|-|-|-|-|
| read | 0 | int fd | char* buf | size_t count | - | - | - | - |
| write | 1 | int fd | char* buf | size_t count | - | - | - | - |
| exit | 60 | int error_code| - | - | - | - | - | - |

# Enums
