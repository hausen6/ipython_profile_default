#!/usr/bin/env python
# -*- coding: utf-8 -*-
from __future__ import print_function, unicode_literals, division
import os
import sys
from glob import glob

try:
    import numpy as np
except (ImportError) as e:
    print(e)
try:
    import matplotlib.pyplot as plt
except (ImportError) as e:
    print(e)
try:
    import pandas as pd
except (ImportError) as e:
    print(e)
