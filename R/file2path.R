library(rstudioapi)

get_abs_filepath <- function(){
  platform <- Sys.info()[1]
  
  if (platform == "Darwin") { # MAC OS
    
    script <- paste0(
      "osascript -e '\
  if ((clipboard info) as string) contains \"«class furl»\" then
    return POSIX path of (the clipboard as «class furl»)
  else
    return the clipboard
  end if'"
    )
    
    result <- system(script, intern = TRUE)
    return(result) 
  }
}

get_relative_path <- function(){
  # 调用函数获取剪贴板中的文件路径
  file_path <- get_abs_filepath()
  
  # 确认获取到了文件目录再运行，否则输出警告
  if(file.exists(file_path)){
    # 获取当前路径
    wd_path <- getwd()
    
    # 比较两个字符串中最多的相同部分
    ## 先切分文件路径
    file_path_split <- strsplit(file_path, "/")[[1]]
    wd_path_split <- strsplit(wd_path, "/")[[1]]
    ## 确定较短的向量长度
    shorter_length <- min(length(file_path_split), length(wd_path_split))
    ## 使用intersect()函数找到相同的元素
    intersect_elements <- intersect(file_path_split[1:shorter_length], 
                                    wd_path_split[1:shorter_length])
    n_intersect <- length(intersect_elements)
    
    # 组织相对路径
    ## file_path每余下一个部分，就将其内容粘贴在一起
    ## wd_path每余下一个部分，就增加一次后退的「..」
    file_path_out <- paste0(file_path_split[-c(1:n_intersect)], collapse = "/")
    wd_path_out <- paste(rep("..",length(wd_path_split)-n_intersect), sep = "/", collapse = "/")
    if(wd_path_out == ""){
      output <- file_path_out
    } else {
      output <-paste(wd_path_out, file_path_out, sep = "/")
    }
    return(output)
  } else {
    warning("Get file path fail.")
    return(file_path)
  }
  
}


pasteRP <- function() {
  rstudioapi::insertText(get_relative_path())
}


