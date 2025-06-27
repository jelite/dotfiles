" ------------------------------
" 기본 설정
" ------------------------------
set nocompatible              " 호환 모드 끄기 (Vim을 Vim답게)
syntax on                    " 문법 하이라이트
filetype plugin indent on
set number                   " 줄 번호 표시
set relativenumber           " 상대 줄 번호 (편리한 이동)
set showmatch                " 괄호 짝 표시
set mouse=a                  " 마우스 사용 가능
set clipboard=unnamedplus    " 시스템 클립보드 연동 (복사/붙여넣기)
set encoding=utf-8           " 인코딩 설정
set fileencoding=utf-8

" ─── python 전용 설정 ─────────────────────────────
autocmd FileType python setlocal tabstop=4 shiftwidth=4 expandtab
autocmd FileType python syntax enable

" ─── 색상 테마 ────────────────────────────────────
colorscheme desert

" ─── 배경 어둡게 설정 (다크모드일 때 가독성 ↑) ─────
set background=dark

" ─── 256색 지원이 켜져 있으면 더 다양한 테마 사용 가능 ─────
set t_Co=256
highlight Normal ctermbg=black guibg=#000000


" ------------------------------
" 탐색 및 검색
" ------------------------------
set hlsearch                 " 검색어 하이라이트
set incsearch                " 입력하면서 바로 검색
set ignorecase               " 검색 시 대소문자 무시
set smartcase                " 대소문자 섞이면 구분

" ------------------------------
" 탭, 들여쓰기
" ------------------------------
set tabstop=4                " 탭을 4칸으로
set shiftwidth=4             " 자동 들여쓰기 크기
set expandtab                " 탭 대신 공백 삽입
set smartindent              " 스마트 들여쓰기

" ------------------------------
" 인터페이스 개선
" ------------------------------
set ruler                    " 커서 위치 표시
set laststatus=2             " 상태바 항상 표시
set showcmd                  " 명령어 표시
set wildmenu                 " 자동 완성 메뉴
set scrolloff=5              " 스크롤 여백
set cursorline               " 현재 줄 강조

" ------------------------------
" 파일 저장 관련
" ------------------------------
set autoread                 " 외부에서 변경 시 자동 로드
set autowrite                " 이동 시 자동 저장

" ------------------------------
" 백업 및 스왑 설정
" ------------------------------
set nobackup                 " 백업 파일 생성 안 함
set nowritebackup
set noswapfile               " 스왑 파일 비활성화
