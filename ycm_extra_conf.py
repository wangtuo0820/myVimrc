
import os
import ycm_core
 
flags = [
    '-Wall',
    '-Wextra',
    '-Werror',
    '-Wno-long-long',
    '-Wno-variadic-macros',
    '-fexceptions',
    '-DNDEBUG',
    '-std=c++11',
    '-x',
    'c++',
    '-I',
    '/usr/include',
    '/usr/local/include',
    '-isystem',
    '/usr/lib/gcc/x86_64-linux-gnu/5/include',
    '-isystem',
    '/usr/include/x86_64-linux-gnu',
    '-isystem',
    '/opt/ros/noetic/include',
    '-isystem',
    '/usr/include/pcl-1.10',
    '-isystem',
    '/usr/include/eigen3',
    '-isystem',
    '/usr/include/c++/5',
    '-isystem',
    '/usr/include/c++/9',
    '-isystem',
    '/usr/include/c++/5/bits'
  ]
 
SOURCE_EXTENSIONS = [ '.cpp', '.cxx', '.cc', '.c', ]
 
def FlagsForFile( filename, **kwargs ):
  return {
    'flags': flags,
    'do_cache': True
  }

def PythonSysPath( **kwargs ):
  sys_path = kwargs[ 'sys_path' ]
  sys_path.insert( 1, '/usr/lib/python3/dist-packages' )
  return sys_path
