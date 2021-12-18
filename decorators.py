import functools
import pandas as pd


def timer(func):
    @functools.wraps(func)
    def wrapper(*args,**kwargs):

        start_time = time.perf_counter()
        func_run = func(*args,**kwargs)
        finish_time = time.perf_counter()

        run_time = finish_time - start_time

        shutter_csv = pd.DataFrame()

        shutter_csv.append(run_time)
        shutter_csv.append(p,ignore_index = True)

    return wrapper
