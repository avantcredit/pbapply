setpb <-
function(pb, value)
{
    if (dopb()) {
        control <- getOption("pboptions")
        rval <- switch(control$type, 
            txt = setTxtProgressBar(pb, value), 
            win = setWinProgressBar(pb, value, label=control$label),
            tk = tcltk::setTkProgressBar(pb, value, label=control$label))
    } else rval <- NULL
    invisible(rval)
}

