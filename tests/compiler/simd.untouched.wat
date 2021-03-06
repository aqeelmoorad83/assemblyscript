(module
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\07\00\00\00s\00i\00m\00d\00.\00t\00s\00")
 (table $0 1 funcref)
 (elem (i32.const 0) $null)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/ASC_FEATURE_SIMD i32 (i32.const 0))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 28))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start:~lib/allocator/arena (; 1 ;) (type $FUNCSIG$v)
  global.get $~lib/memory/HEAP_BASE
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
 )
 (func $simd/test_v128 (; 2 ;) (type $FUNCSIG$v)
  v128.const i32 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf 0x10
  v128.const i32 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf 0x10
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 7
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  v128.const i32 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf 0x10
  v128.const i32 0x2 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf 0x10
  i8x16.ne
  i8x16.any_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 12
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  v128.const i32 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf 0x10
  v128.const i32 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1
  v128.and
  v128.const i32 0x1 0x0 0x1 0x0 0x1 0x0 0x1 0x0 0x1 0x0 0x1 0x0 0x1 0x0 0x1 0x0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 18
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  v128.const i32 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf 0x10
  v128.const i32 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1
  v128.or
  v128.const i32 0x1 0x3 0x3 0x5 0x5 0x7 0x7 0x9 0x9 0xb 0xb 0xd 0xd 0xf 0xf 0x11
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 25
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  v128.const i32 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf 0x10
  v128.const i32 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1
  v128.xor
  v128.const i32 0x0 0x3 0x2 0x5 0x4 0x7 0x6 0x9 0x8 0xb 0xa 0xd 0xc 0xf 0xe 0x11
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 32
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  v128.const i32 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf 0x10
  v128.not
  v128.const i32 0xfe 0xfd 0xfc 0xfb 0xfa 0xf9 0xf8 0xf7 0xf6 0xf5 0xf4 0xf3 0xf2 0xf1 0xf0 0xef
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 39
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  v128.const i32 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf 0x10
  v128.const i32 0x10 0xf 0xe 0xd 0xc 0xb 0xa 0x9 0x8 0x7 0x6 0x5 0x4 0x3 0x2 0x1
  v128.const i32 0x0 0xff 0x0 0xff 0x0 0xff 0x0 0xff 0x0 0xff 0x0 0xff 0x0 0xff 0x0 0xff
  v128.bitselect
  v128.const i32 0x10 0x2 0xe 0x4 0xc 0x6 0xa 0x8 0x8 0xa 0x6 0xc 0x4 0xe 0x2 0x10
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 45
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $simd/test_i8x16 (; 3 ;) (type $FUNCSIG$v)
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  (local $3 v128)
  (local $4 v128)
  (local $5 v128)
  (local $6 v128)
  v128.const i32 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf 0x7f
  local.set $0
  local.get $0
  v128.const i32 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf 0x7f
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 62
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i8x16.splat
  local.set $1
  local.get $1
  v128.const i32 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 64
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  i8x16.add
  local.set $2
  local.get $2
  v128.const i32 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf 0x10 0x80
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 66
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  local.get $1
  i8x16.sub
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 67
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  local.get $1
  i8x16.mul
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 68
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i8x16.neg
  v128.const i32 0xff 0xfe 0xfd 0xfc 0xfb 0xfa 0xf9 0xf8 0xf7 0xf6 0xf5 0xf4 0xf3 0xf2 0xf1 0x81
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 69
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i8x16.extract_lane_s 0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 74
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i8x16.extract_lane_s 15
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const -128
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 75
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i8x16.extract_lane_u 15
  i32.const 255
  i32.and
  i32.const 128
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 76
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i32.const 17
  i8x16.replace_lane 15
  v128.const i32 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf 0x10 0x11
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 77
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x1 0x1 0x1 0x1 0x1 0x1 0x1 0x1
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 82
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  v128.const i32 0x7e 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f 0x7f
  i32.const 2
  i8x16.splat
  i8x16.add_saturate_s
  i32.const 127
  i8x16.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 87
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  v128.const i32 0xfe 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff
  i32.const 2
  i8x16.splat
  i8x16.add_saturate_u
  i32.const -1
  i8x16.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 93
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  v128.const i32 0x81 0x80 0x80 0x80 0x80 0x80 0x80 0x80 0x80 0x80 0x80 0x80 0x80 0x80 0x80 0x80
  i32.const 2
  i8x16.splat
  i8x16.sub_saturate_s
  i32.const -128
  i8x16.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 99
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  v128.const i32 0x1 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0
  i32.const 2
  i8x16.splat
  i8x16.sub_saturate_u
  i32.const 0
  i8x16.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 105
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i8x16.splat
  i32.const 1
  i8x16.shl
  i32.const 2
  i8x16.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 111
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const -2
  i8x16.splat
  i32.const 1
  i8x16.shr_s
  i32.const -1
  i8x16.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 112
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const -1
  i8x16.splat
  i32.const 1
  i8x16.shr_u
  i32.const 127
  i8x16.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 113
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  v128.const i32 0x1 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0
  i8x16.any_true
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 114
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i8x16.splat
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 115
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i8x16.splat
  i32.const 1
  i8x16.replace_lane 0
  local.set $3
  i32.const 0
  i8x16.splat
  i32.const -1
  i8x16.replace_lane 0
  local.set $4
  local.get $4
  local.set $5
  local.get $4
  v128.not
  local.set $6
  local.get $4
  local.get $3
  i8x16.eq
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 120
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $4
  local.get $3
  i8x16.ne
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 121
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $4
  local.get $3
  i8x16.lt_s
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 122
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $3
  local.get $4
  i8x16.lt_u
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 123
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $3
  local.get $4
  i8x16.le_s
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 124
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $4
  local.get $3
  i8x16.le_u
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 125
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $3
  local.get $4
  i8x16.gt_s
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 126
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $4
  local.get $3
  i8x16.gt_u
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 127
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $4
  local.get $3
  i8x16.ge_s
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 128
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $3
  local.get $4
  i8x16.ge_u
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 129
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $simd/test_i16x8 (; 4 ;) (type $FUNCSIG$v)
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  (local $3 v128)
  (local $4 v128)
  (local $5 v128)
  (local $6 v128)
  v128.const i32 0x1 0x0 0x2 0x0 0x3 0x0 0x4 0x0 0x5 0x0 0x6 0x0 0x7 0x0 0xff 0x7f
  local.set $0
  local.get $0
  v128.const i32 0x1 0x0 0x2 0x0 0x3 0x0 0x4 0x0 0x5 0x0 0x6 0x0 0x7 0x0 0xff 0x7f
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 134
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i16x8.splat
  local.set $1
  local.get $1
  v128.const i32 0x1 0x0 0x1 0x0 0x1 0x0 0x1 0x0 0x1 0x0 0x1 0x0 0x1 0x0 0x1 0x0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 136
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  i16x8.add
  local.set $2
  local.get $2
  v128.const i32 0x2 0x0 0x3 0x0 0x4 0x0 0x5 0x0 0x6 0x0 0x7 0x0 0x8 0x0 0x0 0x80
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 138
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  local.get $1
  i16x8.sub
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 139
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  local.get $1
  i16x8.mul
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 140
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i16x8.neg
  v128.const i32 0xff 0xff 0xfe 0xff 0xfd 0xff 0xfc 0xff 0xfb 0xff 0xfa 0xff 0xf9 0xff 0x1 0x80
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 141
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i16x8.extract_lane_s 0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 146
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i16x8.extract_lane_s 7
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const -32768
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 147
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i16x8.extract_lane_u 7
  i32.const 65535
  i32.and
  i32.const 32768
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 148
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i32.const 9
  i16x8.replace_lane 7
  v128.const i32 0x2 0x0 0x3 0x0 0x4 0x0 0x5 0x0 0x6 0x0 0x7 0x0 0x8 0x0 0x9 0x0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 149
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32 0x1 0x0 0x2 0x0 0x3 0x0 0x4 0x0 0x1 0x0 0x1 0x0 0x1 0x0 0x1 0x0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 154
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  v128.const i32 0xfe 0x7f 0xff 0x7f 0xff 0x7f 0xff 0x7f 0xff 0x7f 0xff 0x7f 0xff 0x7f 0xff 0x7f
  i32.const 2
  i16x8.splat
  i16x8.add_saturate_s
  i32.const 32767
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 159
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  v128.const i32 0xfe 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff
  i32.const 2
  i16x8.splat
  i16x8.add_saturate_u
  i32.const -1
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 165
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  v128.const i32 0x1 0x80 0x0 0x80 0x0 0x80 0x0 0x80 0x0 0x80 0x0 0x80 0x0 0x80 0x0 0x80
  i32.const 2
  i16x8.splat
  i16x8.sub_saturate_s
  i32.const -32768
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 171
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  v128.const i32 0x1 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0
  i32.const 2
  i16x8.splat
  i16x8.sub_saturate_u
  i32.const 0
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 177
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i16x8.splat
  i32.const 1
  i16x8.shl
  i32.const 2
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 183
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const -2
  i16x8.splat
  i32.const 1
  i16x8.shr_s
  i32.const -1
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 184
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const -1
  i16x8.splat
  i32.const 1
  i16x8.shr_u
  i32.const 32767
  i16x8.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 185
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  v128.const i32 0x1 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0
  i16x8.any_true
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 186
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i16x8.splat
  i16x8.all_true
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 187
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i16x8.splat
  i32.const 1
  i16x8.replace_lane 0
  local.set $3
  i32.const 0
  i16x8.splat
  i32.const -1
  i16x8.replace_lane 0
  local.set $4
  local.get $4
  local.set $5
  local.get $4
  v128.not
  local.set $6
  local.get $4
  local.get $3
  i16x8.eq
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 192
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $4
  local.get $3
  i16x8.ne
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 193
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $4
  local.get $3
  i16x8.lt_s
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 194
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $3
  local.get $4
  i16x8.lt_u
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 195
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $3
  local.get $4
  i16x8.le_s
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 196
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $4
  local.get $3
  i16x8.le_u
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 197
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $3
  local.get $4
  i16x8.gt_s
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 198
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $4
  local.get $3
  i16x8.gt_u
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 199
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $4
  local.get $3
  i16x8.ge_s
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 200
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $3
  local.get $4
  i16x8.ge_u
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 201
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $simd/test_i32x4 (; 5 ;) (type $FUNCSIG$v)
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  (local $3 v128)
  (local $4 v128)
  (local $5 v128)
  (local $6 v128)
  v128.const i32 0x1 0x0 0x0 0x0 0x2 0x0 0x0 0x0 0x3 0x0 0x0 0x0 0xff 0xff 0xff 0x7f
  local.set $0
  local.get $0
  v128.const i32 0x1 0x0 0x0 0x0 0x2 0x0 0x0 0x0 0x3 0x0 0x0 0x0 0xff 0xff 0xff 0x7f
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 206
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32x4.splat
  local.set $1
  local.get $1
  v128.const i32 0x1 0x0 0x0 0x0 0x1 0x0 0x0 0x0 0x1 0x0 0x0 0x0 0x1 0x0 0x0 0x0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 208
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32x4.add
  local.set $2
  local.get $2
  v128.const i32 0x2 0x0 0x0 0x0 0x3 0x0 0x0 0x0 0x4 0x0 0x0 0x0 0x0 0x0 0x0 0x80
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 210
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32x4.sub
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 211
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32x4.mul
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 212
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32x4.neg
  v128.const i32 0xff 0xff 0xff 0xff 0xfe 0xff 0xff 0xff 0xfd 0xff 0xff 0xff 0x1 0x0 0x0 0x80
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 213
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i32x4.extract_lane 0
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 218
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i32x4.extract_lane 3
  i32.const -2147483648
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 219
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i32.const 5
  i32x4.replace_lane 3
  v128.const i32 0x2 0x0 0x0 0x0 0x3 0x0 0x0 0x0 0x4 0x0 0x0 0x0 0x5 0x0 0x0 0x0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 220
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32 0x1 0x0 0x0 0x0 0x2 0x0 0x0 0x0 0x1 0x0 0x0 0x0 0x1 0x0 0x0 0x0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 225
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32x4.splat
  i32.const 1
  i32x4.shl
  i32.const 2
  i32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 230
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const -2
  i32x4.splat
  i32.const 1
  i32x4.shr_s
  i32.const -1
  i32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 231
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const -1
  i32x4.splat
  i32.const 1
  i32x4.shr_u
  i32.const 2147483647
  i32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 232
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  v128.const i32 0x1 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0
  i32x4.any_true
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 233
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 1
  i32x4.splat
  i32x4.all_true
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 234
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32x4.splat
  i32.const 1
  i32x4.replace_lane 0
  local.set $3
  i32.const 0
  i32x4.splat
  i32.const -1
  i32x4.replace_lane 0
  local.set $4
  local.get $4
  local.set $5
  local.get $4
  v128.not
  local.set $6
  local.get $4
  local.get $3
  i32x4.eq
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 239
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $4
  local.get $3
  i32x4.ne
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 240
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $4
  local.get $3
  i32x4.lt_s
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 241
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $3
  local.get $4
  i32x4.lt_u
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 242
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $3
  local.get $4
  i32x4.le_s
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 243
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $4
  local.get $3
  i32x4.le_u
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 244
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $3
  local.get $4
  i32x4.gt_s
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 245
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $4
  local.get $3
  i32x4.gt_u
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 246
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $4
  local.get $3
  i32x4.ge_s
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 247
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $3
  local.get $4
  i32x4.ge_u
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 248
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  f32.const -1.5
  f32x4.splat
  i32x4.trunc_sat_f32x4_s
  i32.const -1
  i32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 249
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  f32.const -1.5
  f32x4.splat
  i32x4.trunc_sat_f32x4_u
  i32.const 0
  i32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 254
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $simd/test_i64x2 (; 6 ;) (type $FUNCSIG$v)
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  v128.const i32 0x1 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0x7f
  local.set $0
  local.get $0
  v128.const i32 0x1 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0x7f
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 263
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i64.const 1
  i64x2.splat
  local.set $1
  local.get $1
  v128.const i32 0x1 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x1 0x0 0x0 0x0 0x0 0x0 0x0 0x0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 265
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  i64x2.add
  local.set $2
  local.get $2
  v128.const i32 0x2 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x80
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 267
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  local.get $1
  i64x2.sub
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 268
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i64x2.neg
  v128.const i32 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0x1 0x0 0x0 0x0 0x0 0x0 0x0 0x80
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 269
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i64x2.extract_lane 0
  i64.const 2
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 274
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i64x2.extract_lane 1
  i64.const -9223372036854775808
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 275
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  i64.const 3
  i64x2.replace_lane 1
  v128.const i32 0x2 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x3 0x0 0x0 0x0 0x0 0x0 0x0 0x0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 276
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32 0x1 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x1 0x0 0x0 0x0 0x0 0x0 0x0 0x0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 281
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i64.const 1
  i64x2.splat
  i32.const 1
  i64x2.shl
  i64.const 2
  i64x2.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 286
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i64.const -2
  i64x2.splat
  i32.const 1
  i64x2.shr_s
  i64.const -1
  i64x2.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 287
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i64.const -1
  i64x2.splat
  i32.const 1
  i64x2.shr_u
  i64.const 9223372036854775807
  i64x2.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 288
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  v128.const i32 0x1 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0
  i64x2.any_true
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 289
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i64.const 1
  i64x2.splat
  i64x2.all_true
  i32.const 0
  i32.ne
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 290
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  f64.const -1.5
  f64x2.splat
  i64x2.trunc_sat_f64x2_s
  i64.const -1
  i64x2.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 291
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  f64.const -1.5
  f64x2.splat
  i64x2.trunc_sat_f64x2_u
  i64.const 0
  i64x2.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 296
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $simd/test_f32x4 (; 7 ;) (type $FUNCSIG$v)
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  (local $3 v128)
  (local $4 v128)
  (local $5 v128)
  (local $6 v128)
  (local $7 v128)
  v128.const i32 0x0 0x0 0xc0 0x3f 0x0 0x0 0x20 0x40 0x0 0x0 0x60 0x40 0x0 0x0 0x90 0x40
  local.set $0
  local.get $0
  v128.const i32 0x0 0x0 0xc0 0x3f 0x0 0x0 0x20 0x40 0x0 0x0 0x60 0x40 0x0 0x0 0x90 0x40
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 305
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  f32.const 1
  f32x4.splat
  local.set $1
  local.get $1
  v128.const i32 0x0 0x0 0x80 0x3f 0x0 0x0 0x80 0x3f 0x0 0x0 0x80 0x3f 0x0 0x0 0x80 0x3f
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  f32x4.add
  local.set $2
  local.get $2
  v128.const i32 0x0 0x0 0x20 0x40 0x0 0x0 0x60 0x40 0x0 0x0 0x90 0x40 0x0 0x0 0xb0 0x40
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 309
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  local.get $1
  f32x4.sub
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 310
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  local.get $1
  f32x4.mul
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 311
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $0
  f32x4.mul
  local.set $3
  local.get $3
  local.get $0
  f32x4.div
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 313
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $3
  local.get $0
  f32x4.mul
  local.get $0
  i8x16.ne
  i8x16.any_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 314
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  f32x4.neg
  v128.const i32 0x0 0x0 0xc0 0xbf 0x0 0x0 0x20 0xc0 0x0 0x0 0x60 0xc0 0x0 0x0 0x90 0xc0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 315
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  f32x4.extract_lane 0
  f32.const 2.5
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 316
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  f32x4.extract_lane 3
  f32.const 5.5
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 317
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  f32.const 6.5
  f32x4.replace_lane 3
  v128.const i32 0x0 0x0 0x20 0x40 0x0 0x0 0x60 0x40 0x0 0x0 0x90 0x40 0x0 0x0 0xd0 0x40
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 318
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32 0x0 0x0 0xc0 0x3f 0x0 0x0 0x20 0x40 0x0 0x0 0x80 0x3f 0x0 0x0 0x80 0x3f
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 323
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  f32.const 0
  f32x4.splat
  f32.const 1
  f32x4.replace_lane 0
  local.set $4
  f32.const 0
  f32x4.splat
  f32.const -1
  f32x4.replace_lane 0
  local.set $5
  v128.const i32 0xff 0xff 0xff 0xff 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0
  local.set $6
  v128.const i32 0x0 0x0 0x0 0x0 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff
  local.set $7
  local.get $5
  local.get $4
  f32x4.eq
  local.get $7
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 332
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $5
  local.get $4
  f32x4.ne
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 333
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $5
  local.get $4
  f32x4.lt
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 334
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $4
  local.get $5
  f32x4.le
  local.get $7
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 335
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $4
  local.get $5
  f32x4.gt
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 336
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $5
  local.get $4
  f32x4.ge
  local.get $7
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 337
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $5
  local.get $4
  f32x4.min
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $5
  local.get $4
  f32x4.max
  local.get $4
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 339
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $5
  f32x4.abs
  local.get $4
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 340
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  v128.const i32 0x0 0x0 0x80 0x40 0x0 0x0 0x10 0x41 0x0 0x0 0x80 0x41 0x0 0x0 0xc8 0x41
  f32x4.sqrt
  v128.const i32 0x0 0x0 0x0 0x40 0x0 0x0 0x40 0x40 0x0 0x0 0x80 0x40 0x0 0x0 0xa0 0x40
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 341
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const -1
  i32x4.splat
  f32x4.convert_i32x4_s
  f32.const -1
  f32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 342
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const -1
  i32x4.splat
  f32x4.convert_i32x4_u
  f32.const 4294967296
  f32x4.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 347
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $simd/test_f64x2 (; 8 ;) (type $FUNCSIG$v)
  (local $0 v128)
  (local $1 v128)
  (local $2 v128)
  (local $3 v128)
  (local $4 v128)
  (local $5 v128)
  (local $6 v128)
  (local $7 v128)
  v128.const i32 0x0 0x0 0x0 0x0 0x0 0x0 0xf8 0x3f 0x0 0x0 0x0 0x0 0x0 0x0 0x4 0x40
  local.set $0
  local.get $0
  v128.const i32 0x0 0x0 0x0 0x0 0x0 0x0 0xf8 0x3f 0x0 0x0 0x0 0x0 0x0 0x0 0x4 0x40
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 356
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  f64.const 1
  f64x2.splat
  local.set $1
  local.get $1
  v128.const i32 0x0 0x0 0x0 0x0 0x0 0x0 0xf0 0x3f 0x0 0x0 0x0 0x0 0x0 0x0 0xf0 0x3f
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 358
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  f64x2.add
  local.set $2
  local.get $2
  v128.const i32 0x0 0x0 0x0 0x0 0x0 0x0 0x4 0x40 0x0 0x0 0x0 0x0 0x0 0x0 0xc 0x40
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 360
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  local.get $1
  f64x2.sub
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 361
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  local.get $1
  f64x2.mul
  local.get $2
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 362
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $0
  f64x2.mul
  local.set $3
  local.get $3
  local.get $0
  f64x2.div
  local.get $0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 364
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $3
  local.get $0
  f64x2.mul
  local.get $0
  i8x16.ne
  i8x16.any_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 365
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  f64x2.neg
  v128.const i32 0x0 0x0 0x0 0x0 0x0 0x0 0xf8 0xbf 0x0 0x0 0x0 0x0 0x0 0x0 0x4 0xc0
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 366
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  f64x2.extract_lane 0
  f64.const 2.5
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 367
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  f64x2.extract_lane 1
  f64.const 3.5
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  f64.const 4.5
  f64x2.replace_lane 1
  v128.const i32 0x0 0x0 0x0 0x0 0x0 0x0 0x4 0x40 0x0 0x0 0x0 0x0 0x0 0x0 0x12 0x40
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 369
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
  v8x16.shuffle 0 1 2 3 4 5 6 7 24 25 26 27 28 29 30 31
  v128.const i32 0x0 0x0 0x0 0x0 0x0 0x0 0xf8 0x3f 0x0 0x0 0x0 0x0 0x0 0x0 0xf0 0x3f
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 374
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  f64.const 0
  f64x2.splat
  f64.const 1
  f64x2.replace_lane 0
  local.set $4
  f64.const 0
  f64x2.splat
  f64.const -1
  f64x2.replace_lane 0
  local.set $5
  v128.const i32 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0
  local.set $6
  v128.const i32 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0xff 0xff 0xff 0xff 0xff 0xff 0xff 0xff
  local.set $7
  local.get $5
  local.get $4
  f64x2.eq
  local.get $7
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 383
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $5
  local.get $4
  f64x2.ne
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 384
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $5
  local.get $4
  f64x2.lt
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 385
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $4
  local.get $5
  f64x2.le
  local.get $7
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 386
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $4
  local.get $5
  f64x2.gt
  local.get $6
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 387
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $5
  local.get $4
  f64x2.ge
  local.get $7
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 388
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $5
  local.get $4
  f64x2.min
  local.get $5
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 389
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $5
  local.get $4
  f64x2.max
  local.get $4
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 390
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $5
  f64x2.abs
  local.get $4
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 391
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  v128.const i32 0x0 0x0 0x0 0x0 0x0 0x0 0x10 0x40 0x0 0x0 0x0 0x0 0x0 0x0 0x22 0x40
  f64x2.sqrt
  v128.const i32 0x0 0x0 0x0 0x0 0x0 0x0 0x0 0x40 0x0 0x0 0x0 0x0 0x0 0x0 0x8 0x40
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 392
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i64.const -1
  i64x2.splat
  f64x2.convert_i64x2_s
  f64.const -1
  f64x2.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 393
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i64.const -1
  i64x2.splat
  f64x2.convert_i64x2_u
  f64.const 18446744073709551615
  f64x2.splat
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $simd/test_v8x16 (; 9 ;) (type $FUNCSIG$v)
  (local $0 v128)
  (local $1 v128)
  v128.const i32 0x0 0x1 0x2 0x3 0x4 0x5 0x6 0x7 0x8 0x9 0xa 0xb 0xc 0xd 0xe 0xf
  local.set $0
  v128.const i32 0x10 0x11 0x12 0x13 0x14 0x15 0x16 0x17 0x18 0x19 0x1a 0x1b 0x1c 0x1d 0x1e 0x1f
  local.set $1
  local.get $0
  local.get $1
  v8x16.shuffle 0 17 2 19 4 21 6 23 8 25 10 27 12 29 14 31
  v128.const i32 0x0 0x11 0x2 0x13 0x4 0x15 0x6 0x17 0x8 0x19 0xa 0x1b 0xc 0x1d 0xe 0x1f
  i8x16.eq
  i8x16.all_true
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 8
   i32.const 408
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start:simd (; 10 ;) (type $FUNCSIG$v)
  call $start:~lib/allocator/arena
  block
   call $simd/test_v128
   call $simd/test_i8x16
   call $simd/test_i16x8
   call $simd/test_i32x4
   call $simd/test_i64x2
   call $simd/test_f32x4
   call $simd/test_f64x2
   call $simd/test_v8x16
  end
 )
 (func $start (; 11 ;) (type $FUNCSIG$v)
  call $start:simd
 )
 (func $null (; 12 ;) (type $FUNCSIG$v)
 )
)
