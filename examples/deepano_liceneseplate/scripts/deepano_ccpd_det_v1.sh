#!/bin/sh
if ! test -f ../prototxt/deepano_light_ccpd_train_det_v1.prototxt ;then
	echo "error: ../prototxt/deepano_light_ccpd_train_det_v1.prototxt does not exit."
	echo "please generate your own model prototxt primarily."
        exit 1
fi
if ! test -f ../prototxt/deepano_light_ccpd_test_det_v1.prototxt ;then
	echo "error: ../prototxt/deepano_light_ccpd_test_det_v1.prototxt does not exit."
	echo "please generate your own model prototxt primarily."
        exit 1
fi
../../../build/tools/caffe train --solver=../solver/deepano_solver_ccpd_det_v1.prototxt -gpu 2 \
--snapshot=../snapshot/deepanoccpd_res_v1_iter_370000.solverstate