#!/bin/bash

TARGET=other_module.mli

cat > $TARGET <<EOF
module Sub : sig
  type packed = Pack : 'a -> packed

EOF

for i in `seq 1 $1`; do
    echo "  val placeholder$i : unit -> unit" >> $TARGET
done

echo "end" >> $TARGET
