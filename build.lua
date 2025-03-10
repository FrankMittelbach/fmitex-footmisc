#!/usr/bin/env texlua

--[[
     For documentation and usage of the l3build system
     see l3build.pdf
--]]

module = "footmisc"

typesetfiles  = {"*.tex"}

checkengines = {"pdftex"}

checkruns     = 2


-- Upload meta data

uploadconfig = {
 pkg = "footmisc",
 version = "v7.0a 2025-03-10",
 author = "Frank Mittelbach",
 license = "lppl1.3c",
 summary = "A range of footnote options",
 ctanPath = "/macros/latex/contrib/footmisc",
 repository = "https://github.com/frankmittelbach/fmitex-footmisc",
 bugtracker = "https://github.com/FrankMittelbach/fmitex-footmisc/issues",
 uploader = "Frank Mittelbach",
 email = "frank.mittelbach@latex-project.org",
 update = true ,
}



if not release_date then
   kpse.set_program_name("kpsewhich")
   dofile(kpse.lookup("l3build.lua"))
end
