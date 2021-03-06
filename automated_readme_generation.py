import os
import functools


def getFoldersNames(path):
    folders = []
    for item in os.listdir(path):
        if not os.path.isfile(item) and item not in ('.git', '.idea'):
            folders.append(item)
    return folders


def getFilesNames(path):
    files = os.listdir(path)
    return files


def getProblemURLandScore(path):
    inFile = open(path, 'r', encoding='utf-8')
    url = inFile.readline().split()[-1]
    score = inFile.readline().split()[-1]
    inFile.close()
    return url, score


def getTotalNumberOfProblems():
    totalNumber = 0
    folders = getFoldersNames(os.getcwd())
    for folder in folders:
        subfolders = getFoldersNames(os.path.join(os.getcwd(), folder))
        for subfolder in subfolders:
            totalNumber += len(getFilesNames(os.path.join(os.getcwd(), folder, subfolder)))
    return totalNumber


readmeFile = open('README.md', 'w', encoding='utf-8')
print('<p align="center"><a href="https://www.hackerrank.com/kuttumiah"><img src="https://i0.wp.com/gradsingames.com/wp-content/uploads/2016/05/856771_668224053197841_1943699009_o.png" ></a></p>', file=readmeFile)
print(file=readmeFile)
print('# Solutions to HackerRank practice problems', file=readmeFile)
print('This repository contains ' + str(getTotalNumberOfProblems()) + ' solutions to HackerRank practice problems with Python 3 and SQL (MySQL).', file=readmeFile)
print(file=readmeFile)
print('Updated daily :smiley:. If you found it helpful please press :star:.', file=readmeFile)
print(file=readmeFile)
print('[![GitHub last commit](https://img.shields.io/github/last-commit/kuttumiah/HackerRankPractice.svg)](https://github.com/kuttumiah/HackerRankPractice) ', file=readmeFile)
print('[![GitHub commit activity the past week, 4 weeks, year](https://img.shields.io/github/commit-activity/y/kuttumiah/HackerRankPractice.svg)](https://github.com/kuttumiah/HackerRankPractice)', file=readmeFile)
print('[![GitHub repo size in bytes](https://img.shields.io/github/repo-size/kuttumiah/HackerRankPractice.svg)](https://github.com/kuttumiah/HackerRankPractice) ', file=readmeFile)
print('[![GitHub stars](https://img.shields.io/github/stars/kuttumiah/HackerRankPractice.svg)](https://github.com/kuttumiah/HackerRankPractice)', file=readmeFile)
print('[![GitHub license](https://img.shields.io/github/license/kuttumiah/HackerRankPractice.svg)](https://github.com/kuttumiah/HackerRankPractice)', file=readmeFile)
print(file=readmeFile)

folders = getFoldersNames(os.getcwd())
for folder in folders:
    print('- ' + folder, file=readmeFile)
    subfolders = getFoldersNames(os.path.join(os.getcwd(), folder))
    for subfolder in subfolders:
        print('    ' + subfolder, file=readmeFile)
        files = getFilesNames(os.path.join(os.getcwd(), folder, subfolder))
        for file in files:
            url, score = getProblemURLandScore(os.path.join(os.getcwd(), folder, subfolder, file))
            print('        - ' + "".join(file.replace('_', ' ').split(".")[1:-1])[1:]
                  + ' | [Problem](' + url
                  + ')'
                  + ' | [Solution]'
                  + '(https://github.com/kuttumiah/HackerRankPractice/blob/master/'
                  + folder.replace(' ', '%20') + '/' + subfolder.replace(' ', '%20') + '/'
                  + file.replace(' ', '%20') + ')'
                  + ' | Score: ' + str(score), file=readmeFile)

print(file=readmeFile)
print('## Courtesy', file=readmeFile)
print('[Alexander Marinskiy](https://github.com/marinskiy)', file=readmeFile)
print(file=readmeFile)
print('## License', file=readmeFile)
print('[MIT](/LICENSE)', file=readmeFile)
print(file=readmeFile)
print('## Author Information', file=readmeFile)
print('This repository was created in 2018 by [Md Robaiatul Islam](mailto:robaiat.shaon@gmail.com).', file=readmeFile)

readmeFile.close()
