(module
 (type $iv (func (param i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (type $ii (func (param i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $i (func (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\00\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\10\00\00\00s\00t\00d\00/\00g\00c\00-\00b\00a\00s\00i\00c\00s\00.\00t\00s\00")
 (table $0 4 funcref)
 (elem (i32.const 0) $null $std/gc-basics/MyObject_visit $~lib/collector/itcm/__gc_mark $~lib/string/String~gc)
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/TRACE i32 (i32.const 0))
 (global $~lib/collector/itcm/HEADER_SIZE i32 (i32.const 16))
 (global $~lib/collector/itcm/State.INIT i32 (i32.const 0))
 (global $~lib/collector/itcm/State.IDLE i32 (i32.const 1))
 (global $~lib/collector/itcm/State.MARK i32 (i32.const 2))
 (global $~lib/collector/itcm/State.SWEEP i32 (i32.const 3))
 (global $~lib/collector/itcm/state (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/white (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/fromSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/toSpace (mut i32) (i32.const 0))
 (global $~lib/collector/itcm/iter (mut i32) (i32.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (global $std/gc-basics/obj (mut i32) (i32.const 0))
 (global $std/gc-basics/obj2 (mut i32) (i32.const 0))
 (global $~started (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 60))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export "main" (func $std/gc-basics/main))
 (func $std/gc-basics/MyObject_visit (; 1 ;) (type $iv) (param $0 i32)
  nop
 )
 (func $~lib/allocator/arena/__memory_allocate (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  global.get $~lib/internal/allocator/MAX_SIZE_32
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.set $1
  local.get $1
  local.get $0
  local.tee $2
  i32.const 1
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.add
  global.get $~lib/internal/allocator/AL_MASK
  i32.add
  global.get $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  local.set $4
  current_memory
  local.set $5
  local.get $4
  local.get $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $4
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $2
   local.get $5
   local.tee $3
   local.get $2
   local.tee $6
   local.get $3
   local.get $6
   i32.gt_s
   select
   local.set $3
   local.get $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $4
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/memory/memory.allocate (; 3 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $~lib/collector/itcm/ManagedObjectList#clear (; 4 ;) (type $iv) (param $0 i32)
  local.get $0
  local.get $0
  i32.store
  local.get $0
  local.get $0
  i32.store offset=4
 )
 (func $~lib/collector/itcm/refToObj (; 5 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/collector/itcm/HEADER_SIZE
  i32.sub
 )
 (func $~lib/collector/itcm/ManagedObject#get:color (; 6 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  i32.const 3
  i32.and
 )
 (func $~lib/collector/itcm/ManagedObject#get:next (; 7 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
 )
 (func $~lib/collector/itcm/ManagedObject#set:next (; 8 ;) (type $iiv) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  local.get $0
  i32.load
  i32.const 3
  i32.and
  i32.or
  i32.store
 )
 (func $~lib/collector/itcm/ManagedObject#unlink (; 9 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  call $~lib/collector/itcm/ManagedObject#get:next
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $1
  call $~lib/collector/itcm/ManagedObject#set:next
 )
 (func $~lib/collector/itcm/ManagedObjectList#push (; 10 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $1
  local.get $0
  call $~lib/collector/itcm/ManagedObject#set:next
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $2
  local.get $1
  call $~lib/collector/itcm/ManagedObject#set:next
  local.get $0
  local.get $1
  i32.store offset=4
 )
 (func $~lib/collector/itcm/ManagedObject#makeGray (; 11 ;) (type $iv) (param $0 i32)
  local.get $0
  global.get $~lib/collector/itcm/iter
  i32.eq
  if
   local.get $0
   i32.load offset=4
   global.set $~lib/collector/itcm/iter
  end
  local.get $0
  call $~lib/collector/itcm/ManagedObject#unlink
  global.get $~lib/collector/itcm/toSpace
  local.get $0
  call $~lib/collector/itcm/ManagedObjectList#push
  local.get $0
  local.get $0
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.const 2
  i32.or
  i32.store
 )
 (func $~lib/collector/itcm/__gc_mark (; 12 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  if
   block $__inlined_func$~lib/collector/itcm/refToObj (result i32)
    local.get $0
    local.set $2
    local.get $2
    global.get $~lib/collector/itcm/HEADER_SIZE
    i32.sub
   end
   local.set $1
   local.get $1
   call $~lib/collector/itcm/ManagedObject#get:color
   global.get $~lib/collector/itcm/white
   i32.eq
   if
    local.get $1
    call $~lib/collector/itcm/ManagedObject#makeGray
   end
  end
 )
 (func $~lib/collector/itcm/ManagedObject#set:color (; 13 ;) (type $iiv) (param $0 i32) (param $1 i32)
  local.get $0
  local.get $0
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $1
  i32.or
  i32.store
 )
 (func $~lib/collector/itcm/objToRef (; 14 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/collector/itcm/HEADER_SIZE
  i32.add
 )
 (func $~lib/allocator/arena/__memory_free (; 15 ;) (type $iv) (param $0 i32)
  nop
 )
 (func $~lib/memory/memory.free (; 16 ;) (type $iv) (param $0 i32)
  local.get $0
  call $~lib/allocator/arena/__memory_free
  return
 )
 (func $~lib/collector/itcm/step (; 17 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   block $case3|0
    block $case2|0
     block $case1|0
      block $case0|0
       global.get $~lib/collector/itcm/state
       local.set $1
       local.get $1
       global.get $~lib/collector/itcm/State.INIT
       i32.eq
       br_if $case0|0
       local.get $1
       global.get $~lib/collector/itcm/State.IDLE
       i32.eq
       br_if $case1|0
       local.get $1
       global.get $~lib/collector/itcm/State.MARK
       i32.eq
       br_if $case2|0
       local.get $1
       global.get $~lib/collector/itcm/State.SWEEP
       i32.eq
       br_if $case3|0
       br $break|0
      end
      block
       block $__inlined_func$~lib/memory/memory.allocate (result i32)
        global.get $~lib/collector/itcm/HEADER_SIZE
        local.set $2
        local.get $2
        call $~lib/allocator/arena/__memory_allocate
        br $__inlined_func$~lib/memory/memory.allocate
       end
       global.set $~lib/collector/itcm/fromSpace
       global.get $~lib/collector/itcm/fromSpace
       i32.const -1
       i32.store offset=8
       global.get $~lib/collector/itcm/fromSpace
       call $~lib/collector/itcm/ManagedObjectList#clear
       block $__inlined_func$~lib/memory/memory.allocate0 (result i32)
        global.get $~lib/collector/itcm/HEADER_SIZE
        local.set $3
        local.get $3
        call $~lib/allocator/arena/__memory_allocate
        br $__inlined_func$~lib/memory/memory.allocate0
       end
       global.set $~lib/collector/itcm/toSpace
       global.get $~lib/collector/itcm/toSpace
       i32.const -1
       i32.store offset=8
       global.get $~lib/collector/itcm/toSpace
       call $~lib/collector/itcm/ManagedObjectList#clear
       global.get $~lib/collector/itcm/toSpace
       global.set $~lib/collector/itcm/iter
       global.get $~lib/collector/itcm/State.IDLE
       global.set $~lib/collector/itcm/state
      end
     end
     block
      i32.const 2
      call $~iterateRoots
      global.get $~lib/collector/itcm/State.MARK
      global.set $~lib/collector/itcm/state
      br $break|0
      unreachable
     end
     unreachable
    end
    block
     global.get $~lib/collector/itcm/iter
     call $~lib/collector/itcm/ManagedObject#get:next
     local.set $0
     local.get $0
     global.get $~lib/collector/itcm/toSpace
     i32.ne
     if
      local.get $0
      global.set $~lib/collector/itcm/iter
      local.get $0
      global.get $~lib/collector/itcm/white
      i32.eqz
      call $~lib/collector/itcm/ManagedObject#set:color
      i32.const 1
      global.set $~argc
      block $__inlined_func$~lib/collector/itcm/objToRef (result i32)
       local.get $0
       local.set $4
       local.get $4
       global.get $~lib/collector/itcm/HEADER_SIZE
       i32.add
      end
      local.get $0
      i32.load offset=8
      call_indirect (type $iv)
     else      
      i32.const 2
      call $~iterateRoots
      global.get $~lib/collector/itcm/iter
      call $~lib/collector/itcm/ManagedObject#get:next
      local.set $0
      local.get $0
      global.get $~lib/collector/itcm/toSpace
      i32.eq
      if
       global.get $~lib/collector/itcm/fromSpace
       local.set $1
       global.get $~lib/collector/itcm/toSpace
       global.set $~lib/collector/itcm/fromSpace
       local.get $1
       global.set $~lib/collector/itcm/toSpace
       global.get $~lib/collector/itcm/white
       i32.eqz
       global.set $~lib/collector/itcm/white
       local.get $1
       call $~lib/collector/itcm/ManagedObject#get:next
       global.set $~lib/collector/itcm/iter
       global.get $~lib/collector/itcm/State.SWEEP
       global.set $~lib/collector/itcm/state
      end
     end
     br $break|0
     unreachable
    end
    unreachable
   end
   block
    global.get $~lib/collector/itcm/iter
    local.set $0
    local.get $0
    global.get $~lib/collector/itcm/toSpace
    i32.ne
    if
     local.get $0
     call $~lib/collector/itcm/ManagedObject#get:next
     global.set $~lib/collector/itcm/iter
     local.get $0
     global.get $HEAP_BASE
     i32.ge_u
     if
      block $__inlined_func$~lib/memory/memory.free
       local.get $0
       local.set $5
       block
        local.get $5
        call $~lib/allocator/arena/__memory_free
        br $__inlined_func$~lib/memory/memory.free
        unreachable
       end
       unreachable
       br $__inlined_func$~lib/memory/memory.free
      end
     end
    else     
     global.get $~lib/collector/itcm/toSpace
     call $~lib/collector/itcm/ManagedObjectList#clear
     global.get $~lib/collector/itcm/State.IDLE
     global.set $~lib/collector/itcm/state
    end
    br $break|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/collector/itcm/__gc_allocate (; 18 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  global.get $~lib/internal/allocator/MAX_SIZE_32
  global.get $~lib/collector/itcm/HEADER_SIZE
  i32.sub
  i32.gt_u
  if
   unreachable
  end
  call $~lib/collector/itcm/step
  block $__inlined_func$~lib/memory/memory.allocate (result i32)
   global.get $~lib/collector/itcm/HEADER_SIZE
   local.get $0
   i32.add
   local.set $3
   local.get $3
   call $~lib/allocator/arena/__memory_allocate
   br $__inlined_func$~lib/memory/memory.allocate
  end
  local.set $2
  local.get $2
  local.get $1
  i32.store offset=8
  local.get $2
  global.get $~lib/collector/itcm/white
  call $~lib/collector/itcm/ManagedObject#set:color
  global.get $~lib/collector/itcm/fromSpace
  local.get $2
  call $~lib/collector/itcm/ManagedObjectList#push
  block $__inlined_func$~lib/collector/itcm/objToRef (result i32)
   local.get $2
   local.set $4
   local.get $4
   global.get $~lib/collector/itcm/HEADER_SIZE
   i32.add
  end
 )
 (func $~lib/string/String~gc (; 19 ;) (type $iv) (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  call $~lib/collector/itcm/__gc_mark
 )
 (func $~lib/collector/itcm/__gc_collect (; 20 ;) (type $v)
  (local $0 i32)
  block $break|0
   block $case1|0
    block $case0|0
     global.get $~lib/collector/itcm/state
     local.set $0
     local.get $0
     global.get $~lib/collector/itcm/State.INIT
     i32.eq
     br_if $case0|0
     local.get $0
     global.get $~lib/collector/itcm/State.IDLE
     i32.eq
     br_if $case1|0
     br $break|0
    end
   end
   call $~lib/collector/itcm/step
  end
  block $break|1
   loop $continue|1
    global.get $~lib/collector/itcm/state
    global.get $~lib/collector/itcm/State.IDLE
    i32.ne
    if
     call $~lib/collector/itcm/step
     br $continue|1
    end
   end
  end
 )
 (func $~lib/gc/gc.collect (; 21 ;) (type $v)
  call $~lib/collector/itcm/__gc_collect
  return
 )
 (func $std/gc-basics/main (; 22 ;) (type $i) (result i32)
  global.get $~started
  i32.eqz
  if
   call $start
   i32.const 1
   global.set $~started
  end
  i32.const 0
 )
 (func $start (; 23 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $HEAP_BASE
  global.get $~lib/internal/allocator/AL_MASK
  i32.add
  global.get $~lib/internal/allocator/AL_MASK
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  global.get $~lib/collector/itcm/State.INIT
  global.set $~lib/collector/itcm/state
  i32.const 4
  i32.const 1
  call $~lib/collector/itcm/__gc_allocate
  global.set $std/gc-basics/obj
  global.get $std/gc-basics/obj
  i32.const 123
  i32.store
  block
   global.get $std/gc-basics/obj
   i32.const 16
   i32.sub
   local.set $0
   local.get $0
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   local.set $1
   local.get $0
   i32.load offset=4
   local.set $2
   local.get $1
   i32.const 0
   i32.ne
   local.tee $3
   if (result i32)
    local.get $2
    i32.const 0
    i32.ne
   else    
    local.get $3
   end
   local.tee $3
   if (result i32)
    local.get $1
    local.get $2
    i32.eq
   else    
    local.get $3
   end
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 19
    i32.const 2
    call $~lib/env/abort
    unreachable
   end
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $3
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 21
    i32.const 2
    call $~lib/env/abort
    unreachable
   end
   local.get $0
   i32.load offset=12
   local.set $4
   local.get $4
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 23
    i32.const 2
    call $~lib/env/abort
    unreachable
   end
   local.get $0
   i32.load offset=16
   local.set $5
   local.get $5
   i32.const 123
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 25
    i32.const 2
    call $~lib/env/abort
    unreachable
   end
  end
  call $~lib/gc/gc.collect
  i32.const 0
  global.set $std/gc-basics/obj
  call $~lib/gc/gc.collect
 )
 (func $null (; 24 ;) (type $v)
 )
 (func $~iterateRoots (; 25 ;) (type $iv) (param $0 i32)
  global.get $std/gc-basics/obj
  local.get $0
  call_indirect (type $iv)
  global.get $std/gc-basics/obj2
  local.get $0
  call_indirect (type $iv)
 )
)
