#!/usr/bin/python
# -*- coding: utf-8 -*-

import os, sys, codecs, re, json, traceback
from datetime import datetime
NOW = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
sys.stdout = codecs.getwriter('utf-8')(sys.stdout)

SEPARATOR = '|'
INPUT_FILE_JSON     =   '../2016/11/boxoffice_tw_201611_201701.json'
OUTPUT_FILE_JSON    =   '../2016/11/boxoffice_tw_201611_201701.json'
INPUT_FILE_CSV      =   '../2016/11/boxoffice_tw_201611_201701.csv'
OUTPUT_FILE_CSV     =   '../2016/11/boxoffice_tw_201611_201701.csv'
