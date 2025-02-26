APPS=hello sumArraysOnHost sumArraysOnGPU sumArraysOnGPU-timer sumArraysOnGPU-experiment checkDeviceInfor

all: ${APPS}

%: %.cu
	nvcc -o $@ $<
clean:
	rm -f ${APPS}
