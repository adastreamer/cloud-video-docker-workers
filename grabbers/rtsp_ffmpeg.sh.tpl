#!/bin/bash
exec ${ffmpeg_executable} -i ${url} -c copy -map 0 -f segment -strftime 1 -segment_time 600 -segment_format mov "${output_file}" 2> ${log_file}
