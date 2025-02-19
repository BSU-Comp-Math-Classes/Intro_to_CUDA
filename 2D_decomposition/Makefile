APPS=checkDeviceInfor sumMatrixOnGPU-1D-grid-1D-block sumMatrixOnGPU-2D-grid-1D-block sumMatrixOnGPU-2D-grid-2D-block sumMatrixOnGPU

all: ${APPS}

%: %.cu
	nvcc -o $@ $<
clean:
	rm -f ${APPS}
