project "basis_universal"
	kind "StaticLib"
	language "C"
    staticruntime "off"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
        "encoder/basisu_backend.cpp",
        "encoder/basisu_basis_file.cpp",
        "encoder/basisu_comp.cpp",
        "encoder/basisu_enc.cpp",
        "encoder/basisu_etc.cpp",
        "encoder/basisu_frontend.cpp",
        "encoder/basisu_gpu_texture.cpp",
        "encoder/basisu_pvrtc1_4.cpp",
        "encoder/basisu_resampler.cpp",
        "encoder/basisu_resample_filters.cpp",
        "encoder/basisu_ssim.cpp",
        "encoder/basisu_uastc_enc.cpp",
        "encoder/basisu_bc7enc.cpp",
        "encoder/jpgd.cpp",
        "encoder/basisu_kernels_sse.cpp",
        "encoder/basisu_opencl.cpp",
        "encoder/pvpngreader.cpp",
        "encoder/basisu_uastc_hdr_4x4_enc.cpp",
        "encoder/basisu_astc_hdr_6x6_enc.cpp",
        "encoder/basisu_astc_hdr_common.cpp",
        "encoder/3rdparty/android_astc_decomp.cpp",
        "encoder/3rdparty/tinyexr.cpp",
        "transcoder/basisu_transcoder.cpp",
        "encoder/basisu_astc_hdr_6x6_enc.h",
        "encoder/basisu_astc_hdr_common.h",
        "encoder/basisu_backend.h",
        "encoder/basisu_basis_file.h",
        "encoder/basisu_bc7enc.h",
        "encoder/basisu_comp.h",
        "encoder/basisu_enc.h",
        "encoder/basisu_etc.h",
        "encoder/basisu_frontend.h",
        "encoder/basisu_gpu_texture.h",
        "encoder/basisu_kernels_declares.h",
        "encoder/basisu_kernels_imp.h",
        "encoder/basisu_math.h",
        "encoder/basisu_miniz.h",
        "encoder/basisu_ocl_kernels.h",
        "encoder/basisu_opencl.h",
        "encoder/basisu_pvrtc1_4.h",
        "encoder/basisu_resampler_filters.h",
        "encoder/basisu_resampler.h",
        "encoder/basisu_ssim.h",
        "encoder/basisu_uastc_enc.h",
        "encoder/basisu_uastc_hdr_4x4_enc.h",
        "encoder/cppspmd_flow.h",
        "encoder/cppspmd_math_declares.h",
        "encoder/cppspmd_math.h",
        "encoder/cppspmd_sse.h",
        "encoder/cppspmd_type_aliases.h",
        "encoder/jpgd.h",
        "encoder/pvpngreader.h",
        "encoder/3rdparty/android_astc_decomp.h",
        "encoder/3rdparty/qoi.h",
        "encoder/3rdparty/tinyexr.h",
        "transcoder/basisu_astc_hdr_core.h",
        "transcoder/basisu_astc_helpers.h",
        "transcoder/basisu_containers_impl.h",
        "transcoder/basisu_containers.h",
        "transcoder/basisu_file_headers.h",
        "transcoder/basisu_transcoder_internal.h",
        "transcoder/basisu_transcoder_uastc.h",
        "transcoder/basisu_transcoder.h",
        "transcoder/basisu.h",
        "zstd/zstd.h",
        "zstd/zstd.c"
	}

	includedirs
	{
        "transcoder",
		"encoder"
	}

	defines
	{
		"BASISD_SUPPORT_KTX2_ZSTD=1",
        "BASISU_SUPPORT_SSE=1"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"

	filter "system:linux"
		pic "On"
		systemversion "latest"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
