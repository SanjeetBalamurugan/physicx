workspace "physicx"
architecture "x86_64"
startproject "sandbox"
configurations {"Debug", "Release"}

-- variables
out_dir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

-- Physicx
include "physicx"

-- Demo
include "sandbox"
