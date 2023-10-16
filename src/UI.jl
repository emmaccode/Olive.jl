function inputcell_style()
    st = Style("div.input_cell", border = "2px solid gray", padding = "20px",
    "border-radius" => 30px, "margin-top" => 30px, "transition" => 1seconds,
    "font-size" => 13pt, "letter-spacing" => 1px,
    "font-family" => """"Lucida Console", "Courier New", monospace;""",
    "line-height" => 15px, "width" => 90percent, "border-bottom-left-radius" => 0px,
    "min-height" => 50px, "position" => "relative", "margin-top" => 0px,
    "display" => "inline-block", "border-left-top-radius" => "0px !important",
    "border-top-left-radius" => 0px, "color" => "white", "caret-color" => "gray",
    "line-height" => 24px)
    st::Style
end
#==output[code]
inputcell_style (generic function with 1 method)
==#
#==|||==#
function outputcell_style()
    st = Style("div.output_cell", border = "0px", padding = "10px",
    "margin-top" => 20px, "margin-right" => 200px, "border-radius" => 30px,
    "font-size" => 14pt)
    st::Style
end
#==output[code]
outputcell_style (generic function with 1 method)
==#
#==|||==#
function ipy_style()
    s::Style = Style("div.cell-ipynb",
    "background-color" => "orange",
     "width" => 75percent, "overflow-x" => "hidden", "border-color" => "gray",
     "border-width" => 2px, "cursor" => "pointer",
    "padding" => 4px, "border-style" => "solid", "transition" => "0.5s")
    s:"hover":["scale" => "1.05"]
    s::Style
end
#==output[code]
ipy_style (generic function with 1 method)
==#
#==|||==#

function toml_style()
    s = Style("div.cell-toml", "background-color" => "blue", "text-color" => "white",
    "border-width" => 2px, "overflow-x" => "hidden", "padding" => 4px,
    "transition" => "0.5s",
    "border-style" => "solid", "width" => 75percent)
    s:"hover":["scale" => "1.05"]
    s::Style
end
#==output[code]
toml_style (generic function with 1 method)
==#
#==|||==#

function jl_style()
    s = Style("div.cell-jl", "background-color" => "#F55887", "text-color" => "white",
    "border-width" => 2px, "overflow-x" => "hidden", "padding" => 4px,
    "border-style" => "solid", "width" => 75percent, "transition" => "0.5s")
    s:"hover":["scale" => "1.05"]
    s::Style
end
#==output[code]
jl_style (generic function with 1 method)
==#
#==|||==#

function spin_forever()
    load = Animation("spin_forever", delay = 0.0, length = 1.0, iterations = 0)
    load[:to] = "transform" => "rotate(360deg)"
    load::Animation
end
#==output[code]
spin_forever (generic function with 1 method)
==#
#==|||==#

function load_spinner()
    mys = Style("img.loadicon", "transition" => ".5s")
    animate!(mys, spin_forever())
    mys::Style
end
#==output[code]
load_spinner (generic function with 1 method)
==#
#==|||==#

function usingcell_style()
    st::Style = Style("div.usingcell", border = "0px solid gray", padding = "40px",
    "border-radius" => 5px, "background-color" => "#CCCCFF")
    st::Style
end
#==output[code]
usingcell_style (generic function with 1 method)
==#
#==|||==#

function cell_style()
    st::Style = Style("div.cell", "border-color" => "gray", padding = "20px",
    "background-color" => "white", "border-top-left-radius" => 0px,
    "border-bottom-left-radius" => 0px, "width" => 100percent, "transition" => 1seconds)
    st:"focus":["border-width" => 2px, "border-color" => "magenta"]
    fade_up()
    st::Style
end
#==output[code]
cell_style (generic function with 1 method)
==#
#==|||==#

hdeps_style() = Style("h1.deps", color = "white")
#==output[code]
hdeps_style (generic function with 1 method)
==#
#==|||==#
olive_icons_font() = Style("@font-face", "font-family" => "'Material Icons'",
    "font-style" => "normal", "font-weight" => "400",
    "src" => """local('Material Icons'), local('MaterialIcons-Regular'),
    url(/MaterialIcons.otf) format('opentype')""")
#==output[code]
google_icons (generic function with 1 method)
==#
#==|||==#

function iconstyle()
    s = Style(".material-icons", cursor = "pointer",
    "font-family" => "'Material Icons'", "font-weight" => "normal",
    "font-style" => "normal", "display" => "inline-block", "line-height" => "1",
    "wewbkit-font-smoothing" => "antialiased", "text-rendering" => "optimizeLegibility",
    "font-size" => "100pt", "transition" => ".4s", "line-height" => "1",
    "text-transform" => "none", "letter-spacing" => "normal",
    "word-wrap" => "normal", "white-space" => "nowrap", "direction" => "ltr")
    s:"hover":["color" => "orange", "transform" => "scale(1.1)"]
    s
end
#==output[code]
iconstyle (generic function with 1 method)
==#
#==|||==#

function hidden_style()
    Style("div.cell-hidden",
    "background-color" => "gray",
     "width" => 75percent, "overflow-x" => "hidden",
    "padding" => 4px, "transition" => "0.5s")::Style
end
#==output[code]
hidden_style (generic function with 1 method)
==#
#==|||==#

function julia_style()
    defset = ("padding" => 0px, "font-size" => 16pt, "margin-top" => 0px,
    "margin-bottom" => 0px, "margin" => 0px, "letter-spacing" => 1px,
    "line-height" => 15px,
    "font-family" => """"Lucida Console", "Courier New", monospace;""")
    hljl_pre::Style = Style("pre.hljl", defset ...)
    hljl_nf::Style = Style("span.hljl-nf", "color" => "#2B80FA", defset ...)
    hljl_oB::Style = Style("span.hljl-oB", "color" => "purple", defset ...)
    hljl_n::Style = Style("span.hljl-n", defset ...)
    hljl_ts::Style = Style("span.hljl-ts", "color" => "orange", defset ...)
    hljl_cs::Style = Style("span.hljl-cs", "color" => "gray", defset ...)
    hljl_k::Style = Style("span.hljl-k", "color" => "#E45E9D", defset ...)
    hljl_s::Style = Style("span.hljl-s", "color" => "#3FBA41", defset ...)
    styles::Component{:sheet} = Component("codestyles", "sheet")
    push!(styles, hljl_k, hljl_nf, hljl_oB, hljl_n, hljl_cs, hljl_s,
    hljl_ts)
    styles::Component{:sheet}
end
#==output[code]
julia_style (generic function with 1 method)
==#
#==|||==#

function olivesheet()
    st = ToolipsDefaults.sheet("olivestyle", dark = false)
    bdy = Style("body", "background-color" => "white", "overflow-x" => "hidden")
    pr = Style("pre", "background" => "transparent")
    push!(st, olive_icons_font(), load_spinner(), spin_forever(),
    iconstyle(), hdeps_style(), Toolips.link("oliveicon", rel = "icon",
    href = "/favicon.ico", type = "image/x-icon"), title("olivetitle", text = "olive !"),
    usingcell_style(), outputcell_style(), inputcell_style(), bdy, ipy_style(),
    hidden_style(), jl_style(), toml_style(), julia_style(), pr,
    Style("progress::-webkit-progress-value", "background" => "pink", "transition" => 2seconds),
    Style("progress::-webkit-progress-bar", "background-color" => "whitesmoke"))
    st
end
#==output[code]
olivesheet (generic function with 1 method)
==#
#==|||==#

function projectexplorer()
    pexplore = divider("projectexplorer")
    style!(pexplore, "background" => "transparent", "position" => "absolute",
    "z-index" => "1", "top" => "0", "overflow-x" => "hidden",
     "padding-top" => 75px, "width" => "0", "height" => "90%", "left" => "0",
     "transition" => "0.8s", "overflow-y" => "hidden", "margin-top" => "1.5%")
    pexplore
end
#==output[code]
projectexplorer (generic function with 1 method)
==#
#==|||==#

function explorer_icon(c::Connection)
    explorericon = topbar_icon("explorerico", "drive_file_move_rtl")
    on(c, explorericon, "click") do cm::ComponentModifier
        if cm["olivemain"]["ex"] == "0"
            style!(cm, "projectexplorer", "width" => "500px", 
            "overflow-y" => "scroll")
            style!(cm, "olivemain", "margin-left" => "500px")
            style!(cm, explorericon, "color" => "lightblue")
            set_text!(cm, explorericon, "folder_open")
            cm["olivemain"] = "ex" => "1"
        else
            style!(cm, "projectexplorer", "width" => "0px", 
            "overflow-y" => "hidden")
            style!(cm, "olivemain", "margin-left" => "0px")
            set_text!(cm, explorericon, "drive_file_move_rtl")
            style!(cm, explorericon, "color" => "black")
            cm["olivemain"] = "ex" => "0"
        end
    end
    explorericon::Component{:span}
end
#==output[code]
UndefVarError: ComponentModifier not defined
==#
#==|||==#

function settings_menu(c::Connection)
    mainmenu = section("settingsmenu", open = "0")
    style!(mainmenu, "opacity" => 0percent,  "height" => 0percent,
    "overflow-y" => "scroll", "padding" => 0px)
    mainmenu::Component{:section}
end

function work_menu(c::Connection)
    becell = "workmenu"
    env::Environment = c[:OliveCore].open[getname(c)]
    working_area = containersection(c, becell, text = "inspector")
    style!(working_area[:children][2], "padding" => 12px)
    pinfo_box = div("pinfo$becell")
    style!(pinfo_box, "display" => "flex", "flex-wrap" => "wrap")
    pinfo_box[:children] = Vector{Servable}([work_preview(c, p) for p in env.projects])
    insert!(pinfo_box[:children], 1, work_newpreview(c))
    dinfo_box = div("dinfo$becell")
    dinfo_box[:children] = Vector{Servable}([work_preview(c, d) for d in env.directories])
    fileedit = div("fileeditbox")
    style!(fileedit, "height" => 0percent, "opacity" => 0percent, "transition" => 1seconds, 
    "display" => "flex")
    dirselector = work_filemenu(c, env.directories[1].uri)
    push!(working_area[:children][2], Component("worksep", "hr"), pinfo_box, dinfo_box, 
    dirselector, fileedit)
    working_area
end

function containersection(c::Connection, name::String, level::Int64 = 3;
    text::String = name, fillto::Int64 = 60)
    arrow = topbar_icon("$name-expander", "expand_more")
    style!(arrow, "color" => "darkgray", "font-size" => 17pt)
    outersection = section("outer$name", ex = "0")
    heading = h("$name-heading", level, text = text)
    style!(outersection, "padding" => 3px, "transition" => 1seconds)
    style!(heading, "display" => "inline-block")
    upperdiv = div("$name-upper")
    push!(upperdiv, heading, arrow, Component("sep$name", "sep"))
    push!(outersection, upperdiv)
    innersection = div("$name")
    style!(innersection, "opacity" => 0percent, "height" => 0percent, 
    "padding" => 0px, "transition" => 1seconds, "pointer-events" => "none")
    on(c, arrow, "click") do cm::ComponentModifier
        if cm[outersection]["ex"] == "0"
            style!(cm, innersection, "opacity" => 100percent, "height" => "$fillto%", 
            "pointer-events" => "auto")
            style!(cm, arrow, "color" => "darkpink")
            cm[outersection] = "ex" => "1"
            return
        end
        style!(cm, innersection, "opacity" => 0percent, "height" => 0percent, 
        "pointer-events" => "none")
        style!(cm, arrow, "color" => "darkgray")
        cm[outersection] = "ex" => "0"
    end
    push!(outersection, innersection)
    outersection::Component{:section}
end

function switch_work_dir!(c::Connection, cm::ComponentModifier, path::String)
    c[:OliveCore].open[getname(c)].pwd = path
    style!(cm, "workmenu", "opacity" => 100percent, "height" => 60percent, 
    "pointer-events" => "auto")
    style!(cm, "workmenu-expander", "color" => "darkpink")
    cm["outerworkmenu"] = "ex" => "1"
    if isfile(path)
        pathsplit = split(path, "/")
        path = string(join(pathsplit[1:length(pathsplit) - 1], "/"))
    end
    set_text!(cm, "selector", string(path))
    children::Vector{Servable} = Vector{Servable}([build_comp(c, path, f) for f in readdir(path)])
    set_children!(cm, "filebox", vcat(Vector{Servable}([build_returner(c, path)]), children))
end

function create_new!(c::Connection, cm::ComponentModifier, dir::Directory{<:Any}; directory::Bool = false)
    switch_work_dir!(c, cm, dir.uri)
    namebox = ToolipsDefaults.textdiv("new_namebox", text = "")
    style!(namebox, "width" => 25percent)
    savebutton = button("confirm_new", text = "confirm")
    cancelbutton = button("cancel_new", text = "cancel")
    on(c, savebutton, "click") do cm2::ComponentModifier
        finalname = cm2[namebox]["text"]
        path = cm2["selector"]["text"]
        try
            if directory
                mkdir(path * "/" * finalname)
            else
                touch(path * "/" * finalname)
            end
            olive_notify!(cm2, "successfully created $finalname !", color = "green")
            set_children!(cm2, "fileeditbox", [namebox, cancelbutton, savebutton])
            style!(cm2, "fileeditbox", "opacity" => 0percent, "height" => 0percent)
        catch e
            olive_notify!(cm2, "failed to create $finalname !", color = "red")
        end
    end
    on(c, cancelbutton, "click") do cm2::ComponentModifier
        set_children!(cm2, "fileeditbox", Vector{Servable}())
        style!(cm2, "fileeditbox", "opacity" => 0percent, "height" => 0percent)
    end
    set_children!(cm, "fileeditbox", [namebox, cancelbutton, savebutton])
    style!(cm, "fileeditbox", "opacity" => 100percent, "height" => 6percent)
end

function create_new_dir!(c::Connection, cm::ComponentModifier, dir::Directory{<:Any})
    create_new!(c, cm, dir, directory = true)
end

function work_filemenu(c::Connection, path::String)
    selector_indicator = h("selector", 4, text = path)
    selector_box = div("selectorbox")
    controls = div("filecontrols")
    style!(selector_box, "display" => "inline-block")
    style!(selector_indicator, "display" => "inline-block")
    adddirec = topbar_icon("add_direc", "arrow_upward")
    new_dirb = topbar_icon("newdirwork", "create_new_folder")
    new_fb = topbar_icon("newfbwork", "article")
    style!(adddirec, "color" => "gray", "font-size" => 10pt)
    style!(new_dirb, "font-size" => 20pt, "display" => "inline-block", "color" => "darkgray", 
    "margin-left" => 30px)
    style!(new_fb, "font-size" => 20pt, "display" => "inline-block", "color" => "darkgray")
    on(c, new_dirb, "click") do cm::ComponentModifier
        uri::String = cm[selector_indicator]["text"]
        dir::Directory{<:Any} = Directory(uri)
        create_new_dir!(c, cm, dir)
    end
    on(c, new_fb, "click") do cm::ComponentModifier
        uri::String = cm[selector_indicator]["text"]
        dir::Directory{<:Any} = Directory(uri)
        create_new!(c, cm, dir)
    end
    on(c, adddirec, "click") do cm::ComponentModifier
        env = c[:OliveCore].open[getname(c)]
        newdirec = cm[selector_indicator]["text"]
        if length(findall(d -> d.uri == newdirec, env.directories)) > 0
            olive_notify!(cm, "this directory is already open!", color = "red")
            return
        end
        newdirectory = Directory(newdirec)
        addeddirec = build(c, newdirectory, c[:OliveCore].olmod)
        append!(cm, "projectexplorer", addeddirec)
        append!(cm, "dinfoworkmenu", work_preview(c, newdirectory))
        push!(env.directories, newdirectory)
    end
    push!(controls, selector_indicator, adddirec, new_dirb, new_fb)
    push!(selector_box, selector_indicator, controls)
    filebox = section("filebox")
    style!(filebox, "height" => 40percent, "overflow-y" => "scroll", 
    "padding" => 2px)
    filebox[:children] = vcat(Vector{Servable}([build_returner(c, path)]),
    Vector{Servable}([build_comp(c, path, f) for f in readdir(path)]))
    cellover = div("dirselectover")
    push!(cellover, controls, filebox)
    cellover
end

function work_newpreview(c::Connection)
    preview = div("preview_new")
    style!(preview, "display" => "inline-block", "border-radius" => 4px, "border-width" => 2px, "border-color" => "lightgray", "border-style" => "solid")
    name_label = a("labelpreviewnew", text = "create")
    style!(name_label, "color" => "#A2646F", "display" => "inline-block")
    controlsection = div("newcontrols")
    newbuttons = Vector{Servable}([begin
        name = m.sig.parameters[4]
        if name == OliveExtension{<:Any}
            name = "file"
        else
            name = string(name.parameters[1])
        end
        createbutt = button("create$name", text = name)
        on(c, createbutt, "click") do cm::ComponentModifier
            create_new(c, cm, OliveExtension{Symbol(name)}())
        end
        createbutt
    end for m in methods(create_new, [Connection, ComponentModifier, OliveExtension])])
    controlsection[:children] = newbuttons
    push!(preview, name_label, br(), controlsection)
    preview::Component{:div}
end

function create_new(c::Connection, cm::ComponentModifier, oe::OliveExtension{<:Any})
    projdata = Dict{Symbol, Any}(:cells => Vector{Cell}())
    newproj = Project{:olive}("new", projdata)
    projtab = build_tab(c, newproj)
    open_project(c, cm, newproj, projtab)
end

function create_new(c::Connection, cm::ComponentModifier, oe::OliveExtension{:module})
    namebox = ToolipsDefaults.textdiv("new_namebox", text = "")
    style!(namebox, "width" => 25percent)
    savebutton = button("confirm_new", text = "confirm")
    cancelbutton = button("cancel_new", text = "cancel")
    on(c, savebutton, "click") do cm2::ComponentModifier
        finalname = cm2[namebox]["text"]
        path = cm2["selector"]["text"]
        try
            Pkg.generate(path * "/" * finalname)
            olive_notify!(cm2, "successfully created $finalname !", color = "green")
            set_children!(cm2, "fileeditbox", [namebox, cancelbutton, savebutton])
            style!(cm2, "fileeditbox", "opacity" => 0percent, "height" => 0percent)
        catch e
            olive_notify!(cm2, "failed to create $finalname !", color = "red")
        end
    end
    on(c, cancelbutton, "click") do cm2::ComponentModifier
        set_children!(cm2, "fileeditbox", Vector{Servable}())
        style!(cm2, "fileeditbox", "opacity" => 100percent, "height" => 6percent)
    end
    set_children!(cm, "fileeditbox", [namebox, cancelbutton, savebutton])
    style!(cm, "fileeditbox", "opacity" => 100percent, "height" => 6percent)
end


function work_preview(c::Connection, p::Project{<:Any})
    name = p.id
    preview = div("preview$name")
    style!(preview, "display" => "inline-block", "border-radius" => 4px, "border-width" => 2px, "border-color" => "lightgray", "border-style" => "solid")
    name_label = a("label$name", text = p.name)
    style!(name_label, "color" => "#A2646F", "display" => "inline-block")
    savebutton = topbar_icon("save$name", "save")
    style!(savebutton, "font-size"  => 20pt, "color" => "gray", 
    "display" => "inline-block")
    on(c, savebutton, "click") do cm::ComponentModifier
        save_project(c, cm, p)
    end
    saveasbutton = topbar_icon("saveas$name", "save_as")
    style!(saveasbutton, "font-size"  => 20pt, "color" => "gray", 
    "display" => "inline-block")
    on(c, saveasbutton, "click") do cm::ComponentModifier
        save_project_as(c, cm, p)
    end
    push!(preview, name_label, br(), savebutton, saveasbutton)
    preview::Component{:div}
end

function work_preview(c::Connection, d::Directory{<:Any})
    becell = replace(d.uri, "/" => "|")
    preview = div("preview$becell", text = d.uri)
    style!(preview, "background-color" => "#A2646F", "color" => "white", "font-weight" => "bold")
    on(c, preview, "click") do cm::ComponentModifier

    end
    preview::Component{:div}
end

#==output[code]
UndefVarError: Connection not defined
==#
#==|||==#

function olive_notify!(cm::AbstractComponentModifier, message::String,
    duration::Int64 = 2000;  color::String = "pink")
    set_text!(cm, "olive-notifier", message)
    style!(cm, "olive-notifier", "height" => 2percent, "opacity" => 100percent,
    "background-color" => color)
    script!(cm, "notifierdie", time = duration) do cm2
        style!(cm2, "olive-notifier", "height" => 0percent, "opacity" => 0percent)
    end
end
#==output[code]
UndefVarError: AbstractComponentModifier not defined
==#
#==|||==#

function olive_notific()
    notifier = div("olive-notifier", align = "center")
    style!(notifier, "background-color" => "pink", "color" => "white",
    "height" => 0percent, "position" => "sticky", "opacity" => 0percent,
    "width" => 99percent, "margin-left" => 0px, "z-index" => "8",
    "font-weight" => "bold", "border-top-right-radius" => 0px, "overflow" => "hidden",
    "border-top-left-radius" => 0px, "left" => 0percent, "top" => 0percent,
    "transition" => ".5s")
    notifier::Component{:div}
end
#==output[code]
olive_notific (generic function with 1 method)
==#
#==|||==#

function settings(c::Connection)
    settingicon = topbar_icon("settingicon", "settings")
    on(c, settingicon, "click", ["settingsmenu"]) do cm::ComponentModifier
        if cm["settingsmenu"]["open"] == "0"
            style!(cm, settingicon, "transform" => "rotate(-180deg)",
            "color" => "lightblue")
            style!(cm, "settingsmenu", "opacity" => 100percent,
            "height" => 50percent)
            cm["settingsmenu"] = "open" => "1"
            return
        end
        cm["settingsmenu"] =  "open" => "0"
        style!(cm, settingicon, "transform" => "rotate(0deg)",
        "color" => "black")
        style!(cm, "settingsmenu", "opacity" => 0percent, "height" => 0percent)
        save_settings!(c)
        olive_notify!(cm, "settings saved", color = "green")
    end
    settingicon::Component{:span}
end
#==output[code]
UndefVarError: ComponentModifier not defined
==#
#==|||==#

function topbar(c::Connection)
    topbar = divider("menubar")
    leftmenu = span("leftmenu", align = "left")
    style!(leftmenu, "display" => "inline-block")
    rightmenu = span("rightmenu", align = "right")
    style!(rightmenu, "display" => "inline-block", "float" => "right")
    style!(topbar, "border-style" => "solid", "border-color" => "black",
    "border-radius" => "5px", "overflow" =>  "hidden", "position" => "sticky",
    "top" => 0percent, "z-index" => "7", "background-color" => "white")
    tabmenu = div("tabmenu", align = "center")
    style!(tabmenu, "display" => "inline-block")
    push!(leftmenu, explorer_icon(c))
    push!(rightmenu, settings(c))
    push!(topbar, leftmenu, tabmenu, rightmenu)
    topbar::Component{:div}
end
#==output[code]
UndefVarError: Connection not defined
==#
#==|||==#

function topbar_icon(name::String, icon::String)
    ico = span(name, class = "material-icons", text = icon,
     margin = "15px")
     style!(ico, "font-size" => "35pt")
     ico
end
#==output[code]
topbar_icon (generic function with 1 method)
==#
#==|||==#

function olive_body(c::Connection)
    olivebody = body("olivebody")
    style!(olivebody, "overflow-x" => "hidden", "transition" => ".8s")
    olivebody::Component{:body}
end
#==output[code]
UndefVarError: Connection not defined
==#
#==|||==#

function olive_main()
    main = div("olivemain", ex = 0)
    style!(main, "transition" => ".8s", "overflow"  =>  "scroll", "padding" => 2px)
    main::Component{:div}
end
#==output[code]
olive_main (generic function with 2 methods)
==#
#==|||==#
function source_module!(c::Connection, p::Project{<:Any}, name::String)
    openmods = c[:OliveCore].pool
    if length(openmods) > 0
        name = openmods[1]
        deleteat!(openmods, 1)
    else
        name = replace(ToolipsSession.gen_ref(10),
    [string(dig) => "" for dig in digits(1234567890)] ...)
    end
    modstr = olive_module(name, p[:env])
    mod::Module = Main.evalin(Meta.parse(modstr))
    push!(p.data, :mod => mod)
end

function check!(p::Project{<:Any})

end

#==output[code]
UndefVarError: Cell not defined 
==#
#==|||==#

function add_to_session(c::Connection, cs::Vector{<:IPyCells.AbstractCell},
    cm::ComponentModifier, source::String, fpath::String, projpairs::Pair{Symbol, <:Any} ...;
    type::String = "olive")
    all_paths = [begin
    if :path in keys(project.data)
        project[:path]
    end
    end for project in c[:OliveCore].open[getname(c)].projects]
    if fpath in all_paths
        olive_notify!(cm, "project already open!", color = "red")
        return
    end
    fsplit::Vector{SubString} = split(fpath, "/")
    uriabove::String = join(fsplit[1:length(fsplit) - 1], "/")
    environment::String = ""
    if "Project.toml" in readdir(uriabove)
        environment = uriabove
    else
        environment = c[:OliveCore].data["home"]
    end
    projdict::Dict{Symbol, Any} = Dict{Symbol, Any}(:cells => cs,
    :env => environment, projpairs ...)
    if fpath != c[:OliveCore].data["home"]
        push!(projdict, :path => fpath)
    end
    myproj::Project{<:Any} = Project{Symbol(type)}(source, projdict)
    Base.invokelatest(c[:OliveCore].olmod.Olive.source_module!, c, myproj, source)
    Base.invokelatest(c[:OliveCore].olmod.Olive.check!, myproj)
    push!(c[:OliveCore].open[getname(c)].projects, myproj)
    tab::Component{:div} = build_tab(c, myproj)
    open_project(c, cm, myproj, tab)
    myproj::Project{<:Any}
end

function open_project(c::Connection, cm::AbstractComponentModifier, proj::Project{<:Any}, tab::Component{:div})
    projects = c[:OliveCore].open[getname(c)].projects
    n_projects::Int64 = length(projects)
    append!(cm, "pinfoworkmenu", work_preview(c, proj))
    projbuild = build(c, cm, proj)
    if(n_projects == 2)
        style!(cm, "pane_container_two", "width" => 100percent, "opacity" => 100percent)
        proj.data[:pane] = "two"
        append!(cm, "pane_two", projbuild)
        append!(cm, "pane_two_tabs", tab)
        return
    elseif(n_projects == 1)
        proj.data[:pane] = "one"
        append!(cm, "pane_one", projbuild)
        append!(cm, "pane_one_tabs", tab)
        return
    end
    if(cm["olivemain"]["pane"] == "1")
        proj.data[:pane] = "one"
        inpane = findall(p::Project{<:Any} -> p[:pane] == "one", projects)
        [begin
            if projects[p].id != proj.id
                style_tab_closed!(cm, projects[p])
            end
        end  for p in inpane]
        append!(cm, "pane_one_tabs", tab)
        set_children!(cm, "pane_one", [projbuild])
    else
        proj.data[:pane] = "two"
        inpane = findall(p::Project{<:Any} -> p[:pane] == "two", projects)
        [begin
            if projects[p].id != proj.id 
                style_tab_closed!(cm, projects[p])
            end
        end  for p in inpane]
        append!(cm, "pane_two_tabs", tab)
        set_children!(cm, "pane_two", [projbuild])
    end
end

function style_tab_closed!(cm::ComponentModifier, proj::Project{<:Any})
    style!(cm, """tab$(proj.id)""", "background-color" => "lightgray")
end

function style_tab_closed!(cm::ComponentModifier, proj::Project{:include})
    style!(cm, """tab$(proj.id)""", "background-color" => "#1E5631")
end

function style_tab_closed!(cm::ComponentModifier, proj::Project{:module})
    style!(cm, """tab$(proj.id)""", "background-color" => "darkred")
end

function switch_pane!(c::Connection, cm::ComponentModifier, proj::Project{<:Any})
    projects = c[:OliveCore].open[getname(c)].projects
    name = proj.id
    if proj.data[:pane] == "one"
        pane = "two"
    else
        pane = "one"
    end
    proj.data[:pane] = pane
    inpane = findall(p::Project{<:Any} -> p[:pane] == proj[:pane], projects)
    [begin
    if projects[e].id != proj.id 
            style_tab_closed!(cm, projects[e])
        end
    end  for e in inpane]
    remove!(cm, "$name")
    remove!(cm, "tab$(name)")
    set_children!(cm, "pane_$pane", [build(c, cm, proj)])
    append!(cm, "pane_$(pane)_tabs", build_tab(c, proj))
    if pane == "one"
        if length(findall(p::Project{<:Any} -> p[:pane] == "two", projects)) == 0
            style!(cm, "pane_container_two", "width" => 0percent, "opacity" => 0percent)
        end
    else
        if length(findall(p::Project{<:Any} -> p[:pane] == "two", projects)) == 1
            style!(cm, "pane_container_two", "width" => 100percent, "opacity" => 100percent)
        end
    end
end


function tab_controls(c::Connection, p::Project{<:Any})
    fname = p.id
    closebutton = topbar_icon("$(fname)close", "close")
    on(c, closebutton, "click") do cm2::ComponentModifier
        close_project(c, cm2, p)
    end
    restartbutton = topbar_icon("$(fname)restart", "restart_alt")
    on(c, restartbutton, "click") do cm2::ComponentModifier
        new_name = string(split(fname, ".")[1])
        delete!(p.data, :mod)
        source_module!(c, p, new_name)
        olive_notify!(cm2, "module for $(fname) re-sourced")
    end
    add_button = topbar_icon("$(fname)add", "add_circle")
    on(c, add_button, "click") do cm2::ComponentModifier
        cells = p[:cells]
        new_cell = Cell(length(cells) + 1, "creator", "")
        push!(cells, new_cell)
        append!(cm2, fname, build(c, cm2, new_cell, cells, fname))
    end
    runall_button = topbar_icon("$(fname)run", "start")
    on(c, runall_button, "click") do cm2::ComponentModifier
        step_evaluate(c, cm2, p)
    end
    switchpane_button = topbar_icon("$(fname)switch", "compare_arrows")
    on(c, switchpane_button, "click") do cm2::ComponentModifier
        switch_pane!(c, cm2, p)
    end
    style!(closebutton, "font-size"  => 17pt, "color" => "red")
    style!(restartbutton, "font-size"  => 17pt, "color" => "darkgray")
    style!(switchpane_button, "font-size"  => 17pt, "color" => "darkgray")
    style!(add_button, "font-size"  => 17pt, "color" => "darkgray")
    style!(runall_button, "font-size"  => 17pt, "color" => "darkgray")
    [add_button, switchpane_button, restartbutton, runall_button, closebutton]
end

function step_evaluate(c::Connection, cm::ComponentModifier, proj::Project{<:Any}, e::Int64 = 0)
    e += 1
    script!(c, cm, "$(proj.data[:cells][e].id)eval", type = "Timeout") do cm2::ComponentModifier
        evaluate(c, cm2, proj.data[:cells][e], proj.data[:cells], proj)
        if e == length(proj.data[:cells])
            return
        end
        step_evaluate(c, cm2, proj, e)
    end
end

#==output[code]
UndefVarError: Cell not defined 
==#
#==|||==#

function close_project(c::Connection, cm2::ComponentModifier, proj::Project{<:Any})
    name = proj.id
    projs = c[:OliveCore].open[getname(c)].projects
    n_projects::Int64 = length(projs)
    set_children!(cm2, "pane_$(proj.data[:pane])", Vector{Servable}())
    remove!(cm2, "tab$(name)")
    remove!(cm2, "preview$(proj.id)")
    if(n_projects == 1)
        # TODO start screen here
        remove!(cm2, proj.id)
    elseif n_projects == 2
        lastproj = findfirst(pre -> pre.id != proj.id, projs)
        lastproj = projs[lastproj]
        if(lastproj.data[:pane] == "two")
            lpjn = lastproj.id
            remove!(cm2, lpjn)
            remove!(cm2, "tab$lpjn")
            lastproj.data[:pane] = "one"
            append!(cm2, "pane_one_tabs", build_tab(c, lastproj))
                        set_children!(cm2, "pane_one", Vector{Servable}([
                Base.invokelatest(c[:OliveCore].olmod.build, c, cm2, lastproj
            )]))
        end
        style!(cm2, "pane_container_two", "width" => 0percent, "opacity" => 0percent)  
    end
    pos = findfirst(pro -> pro.id == proj.id,
    projs)
    push!(c[:OliveCore].pool, proj.id)
    deleteat!(projs, pos)
    olive_notify!(cm2, "project $(proj.name) closed", color = "blue")
end

function build_tab(c::Connection, p::Project{<:Any}; hidden::Bool = false)
    fname = p.id
    tabbody = div("tab$(fname)")
    style!(tabbody, "border-bottom-right-radius" => 0px,
    "border-bottom-left-radius" => 0px, "display" => "inline-block",
    "border-width" => 2px, "border-color" => "#333333", "border-bottom" => 0px,
    "border-style" => "solid", "margin-bottom" => "0px", "cursor" => "pointer",
    "margin-left" => 0px, "transition" => 1seconds)
    if(hidden)
        style!(tabbody, "background-color" => "gray")
    end
    tablabel = a("tablabel$(fname)", text = p.name)
    style!(tablabel, "font-weight" => "bold", "margin-right" => 5px,
    "font-size"  => 13pt, "color" => "#A2646F")
    push!(tabbody, tablabel)
    on(c, tabbody, "click") do cm::ComponentModifier
        projects = c[:OliveCore].open[getname(c)].projects
        inpane = findall(proj::Project{<:Any} -> proj[:pane] == p[:pane], projects)
        [begin
            if projects[e].id != p.id 
                style_tab_closed!(cm, projects[e])
            end
        end  for e in inpane]
        projbuild = build(c, cm, p)
        set_children!(cm, "pane_$(p[:pane])", [projbuild])
        style!(cm, tabbody, "background-color" => "white")
    end
    on(c, tabbody, "dblclick") do cm::ComponentModifier
        if ~("$(fname)close" in keys(cm.rootc))
            decollapse_button = topbar_icon("$(fname)dec", "arrow_left")
            on(c, decollapse_button, "click") do cm2::ComponentModifier
                remove!(cm2, "$(fname)close")
                remove!(cm2, "$(fname)add")
                remove!(cm2, "$(fname)restart")
                remove!(cm2, "$(fname)run")
                remove!(cm2, "$(fname)switch")
                remove!(cm2, decollapse_button)
            end
            style!(decollapse_button, "font-size"  => 17pt, "color" => "blue")
            controls = tab_controls(c, p)
            insert!(controls, 1, decollapse_button)
            [append!(cm, tabbody, serv) for serv in controls]
        end
    end
    tabbody
end

function build_tab(c::Connection, p::Project{:include}; hidden::Bool = false)
    fname = p.id
    tabbody = div("tab$(fname)")
    style!(tabbody, "border-bottom-right-radius" => 0px,
    "border-bottom-left-radius" => 0px, "display" => "inline-block",
    "border-width" => 2px, "border-color" => "#333333", "border-bottom" => 0px,
    "border-style" => "solid", "margin-bottom" => "0px", "cursor" => "pointer",
    "margin-left" => 0px, "transition" => 1seconds, "background-color" => "green")
    if(hidden)
        style!(tabbody, "background-color" => "gray")
    end
    tablabel = a("tablabel$(fname)", text = p.name)
    style!(tablabel, "font-weight" => "bold", "margin-right" => 5px,
    "font-size"  => 13pt, "color" => "white")
    push!(tabbody, tablabel)
    on(c, tabbody, "click") do cm::ComponentModifier
        projects = c[:OliveCore].open[getname(c)].projects
        inpane = findall(proj::Project{<:Any} -> proj[:pane] == p[:pane], projects)
        [begin
            if projects[e].id != p.id 
                style_tab_closed!(cm, projects[e])
            end
        end  for e in inpane]
        projbuild = build(c, cm, p)
        set_children!(cm, "pane_$(p[:pane])", [projbuild])
        style!(cm, tabbody, "background-color" => "green")
    end
    on(c, tabbody, "dblclick") do cm::ComponentModifier
        if ~("$(fname)close" in keys(cm.rootc))
            decollapse_button = topbar_icon("$(fname)dec", "arrow_left")
            on(c, decollapse_button, "click") do cm2::ComponentModifier
                remove!(cm2, "$(fname)close")
                remove!(cm2, "$(fname)add")
                remove!(cm2, "$(fname)run")
                remove!(cm2, "$(fname)switch")
                remove!(cm2, decollapse_button)
            end
            style!(decollapse_button, "font-size"  => 17pt, "color" => "blue")
            controls = tab_controls(c, p)
            insert!(controls, 1, decollapse_button)
            [append!(cm, tabbody, serv) for serv in controls]
        end
    end
    tabbody::Component{:div}
end


function build_tab(c::Connection, p::Project{:module}; hidden::Bool = false)
    fname = p.id
    tabbody = div("tab$(fname)")
    style!(tabbody, "border-bottom-right-radius" => 0px,
    "border-bottom-left-radius" => 0px, "display" => "inline-block",
    "border-width" => 2px, "border-color" => "#333333", "border-bottom" => 0px,
    "border-style" => "solid", "margin-bottom" => "0px", "cursor" => "pointer",
    "margin-left" => 0px, "transition" => 1seconds, "background-color" => "#FF6C5C")
    if(hidden)
        style!(tabbody, "background-color" => "gray")
    end
    tablabel = a("tablabel$(fname)", text = p.name)
    style!(tablabel, "font-weight" => "bold", "margin-right" => 5px,
    "font-size"  => 13pt, "color" => "white")
    push!(tabbody, tablabel)
    on(c, tabbody, "click") do cm::ComponentModifier
        projects = c[:OliveCore].open[getname(c)].projects
        inpane = findall(proj::Project{<:Any} -> proj[:pane] == p[:pane], projects)
        [begin
            if projects[e].id != p.id 
                style_tab_closed!(cm, projects[e])
            end
        end  for e in inpane]
        projbuild = build(c, cm, p)
        set_children!(cm, "pane_$(p[:pane])", [projbuild])
        style!(cm, tabbody, "background-color" => "#FF6C5C")
    end
    on(c, tabbody, "dblclick") do cm::ComponentModifier
        if ~("$(fname)close" in keys(cm.rootc))
            decollapse_button = topbar_icon("$(fname)dec", "arrow_left")
            on(c, decollapse_button, "click") do cm2::ComponentModifier
                remove!(cm2, "$(fname)close")
                remove!(cm2, "$(fname)add")
                remove!(cm2, "$(fname)run")
                remove!(cm2, "$(fname)switch")
                remove!(cm2, decollapse_button)
            end
            style!(decollapse_button, "font-size"  => 17pt, "color" => "blue")
            controls = tab_controls(c, p)
            insert!(controls, 1, decollapse_button)
            [append!(cm, tabbody, serv) for serv in controls]
        end
    end
    tabbody::Component{:div}
end


#==output[code]
UndefVarError: ComponentModifier not defined
==#
#==|||==#

function save_project(c::Connection, cm2::ComponentModifier, p::Project{<:Any})
    save_split = split(p.name, ".")
    if ~(:path in keys(p.data))
        save_project_as(c, cm2, p)
        return
    end
    if length(save_split) < 2
        save_type = "Any"
    else
        save_type = join(save_split[2:length(save_split)])
    end
    cells = p[:cells]
    if :export in keys(p.data)
        pe::ProjectExport{<:Any} = ProjectExport{p[:export]}()
    else
        pe = ProjectExport{Symbol(save_type)}()
    end
    ret = olive_save(cells, p, pe)
    if isnothing(ret)
        olive_notify!(cm2, "project $(p.name) saved", color = "green")
    else
        olive_notify!(cm2, "file $(p.name) failed to save.", color = "red")
    end
end

function save_project_as(c::Connection, cm::ComponentModifier, p::Project{<:Any})
    projpath = c[:OliveCore].open[getname(c)].pwd
    if :path in keys(p.data)
        projpath = p[:path]
    end
    save_split = split(projpath, ".")
    fnamesplit = split(save_split[1], "/")
    epname = join(save_split[2:length(save_split)], ".")
    fname = fnamesplit[length(fnamesplit)] * "(1)" * "." * epname 
    switch_work_dir!(c, cm, projpath)
    namebox = ToolipsDefaults.textdiv("saveasbox", text = fname)
    output_opts = Vector{Servable}([begin
        mname = m.sig.parameters[4]
        if mname == ProjectExport{<:Any}
            ToolipsDefaults.option("rawselect", text = "raw")
        else
            ToolipsDefaults.option(string(e), text = string(mname.parameters[1]))
        end  
    end for (e, m) in enumerate(methods(olive_save))])
    selectorbox = ToolipsDefaults.dropdown("outputfmt", output_opts)
    selectorbox["value"] = output_opts[1][:text]
    savebutton = button("saveasbutton", text = "save")
    style!(namebox, "display" => "flex", "width" => 100percent, "border" => "2px solid")
    cancelbutton = button("cancel_new", text = "cancel")
    on(c, savebutton, "click", ["saveasbox", "outputfmt", "selector"]) do cm2::ComponentModifier
        finalname = cm2[namebox]["text"]
        path = cm2["selector"]["text"]
        exporttype = cm2[selectorbox]["value"]
        if epname != exporttype
            p.data[:export] = epname
        end
        cells = p.data[:cells]
        p.data[:path] = path * "/" * finalname
        pe::ProjectExport{<:Any} = ProjectExport{Symbol(exporttype)}()
        ret = olive_save(cells, p, pe)
        if isnothing(ret)
            olive_notify!(cm2, "file $(p[:path]) saved", color = "green")
        else
            olive_notify!(cm2, "file $(p[:path]) saved", color = "$ret")
        end
        set_children!(cm2, "fileeditbox", Vector{Servable}())
        style!(cm, "fileeditbox", "opacity" => 0percent, "height" => 0percent)
    end
    on(c, cancelbutton, "click") do cm2::ComponentModifier
        set_children!(cm2, "fileeditbox", Vector{Servable}())
        style!(cm2, "fileeditbox", "opacity" => 0percent, "height" => 0percent)
    end
    set_children!(cm, "fileeditbox", [namebox, selectorbox, cancelbutton, savebutton])
    style!(cm, "fileeditbox", "opacity" => 100percent, "height" => 6percent)
end

function olive_loadicon()
    srcdir = @__DIR__
    iconb64 = read(srcdir * "/images/loadicon.png", String)
    myimg = img("olive-loader", src = iconb64, class = "loadicon")
    animate!(myimg, spin_forever())
    myimg
end
#==output[code]
olive_loadicon (generic function with 1 method)
==#
#==|||==#

function olive_cover()
    srcdir = @__DIR__
    iconb64 = read(srcdir * "/images/cover.png", String)
    img("olive-headerr", src = iconb64, width = 250)
end
#==output[code]
olive_cover (generic function with 1 method)
==#
#==|||==#

include("Cells.jl")
#==output[code]
SystemError: opening file "/home/emmac/dev/toolips/Olive/Cells.jl": No such file or directory
==#
#==|||==#


#==output[code]

==#
#==|||==#
