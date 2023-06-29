import argparse

import matplotlib.pyplot as plt


def main(args):
    if args.plot:
        plt.plot([1, 2, 3, 4])
        plt.ylabel('some numbers')
        plt.show()
        print('We do not enter this branch')
    else:
        print('No plot for you today!')

# add main method here
if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--plot', action='store_true')
    args = parser.parse_args()

    main(args)