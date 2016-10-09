"""
The **pcl_octree** library provides efficient methods for creating a
hierarchical tree data structure from point cloud data.

http://docs.pointclouds.org/trunk/group__octree.html

## Exports

$(EXPORTS)
"""
module PCLOctree

using DocStringExtensions
using LibPCL
using PCLCommon
using Cxx

const libpcl_octree = LibPCL.find_library_e("libpcl_octree")
try
    Libdl.dlopen(libpcl_octree, Libdl.RTLD_GLOBAL)
catch e
    warn("You might need to set DYLD_LIBRARY_PATH to load dependencies proeprty.")
    rethrow(e)
end


end # module
