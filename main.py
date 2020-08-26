# This Python file uses the following encoding: utf-8
import sys
import os
import time
import threading

import sys

from PyQt5.QtGui import QGuiApplication
from PyQt5.QtQml import QQmlApplicationEngine
from PyQt5.QtCore import *


class Main(QObject):
    def __init__(self):
            QObject.__init__(self)

    @pyqtSlot(str, result=str)
    def setTemp(self, s):
         try:
            with open("/sys/kernel/debug/remoteproc/remoteproc0/trace0", "r") as file:
                    first_line = file.readline()
                    for last_line in file:
                        pass
                    dat = last_line.split("temp: ",1)[1]
                    file.close()
                    return dat
         except:
                   print("retrying")


if __name__ == "__main__":
    app = QGuiApplication(sys.argv)
    engine = QQmlApplicationEngine()
    main   = Main()
    engine.rootContext().setContextProperty("main", main)
    engine.load(QUrl('main.qml'))
    engine.quit.connect(app.quit)
    sys.exit(app.exec_())
