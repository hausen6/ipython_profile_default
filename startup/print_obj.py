#!/usr/bin/env python
# -*- coding: utf-8 -*-
import json


def plist(itr):
    if isinstance(itr, (list, tuple, dict)):
        obj = json.dumps(itr, indent=2, ensure_ascii=False)
        print(obj)
    else:
        print(obj)
