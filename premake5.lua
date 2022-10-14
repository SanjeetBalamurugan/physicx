workspace "physicx"
configurations {"Debug", "Release"}

-- variables
out_dir = "%{cfg.buildcfg}%-%{cfg.system}%-%{cfg.configuration}%"

-- Physicx
include "physicx"

-- Demo
include "sandbox"
