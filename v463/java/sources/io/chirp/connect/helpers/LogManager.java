package io.chirp.connect.helpers;

import android.util.Log;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class LogManager {
    private static final String TAG = "ChirpConnect";
    private static LogHandler logHandler = new LogHandlerNone();

    private interface LogHandler {
        void writeLog(String str);
    }

    private static class LogHandlerLogcat implements LogHandler {
        private LogHandlerLogcat() {
        }

        @Override // io.chirp.connect.helpers.LogManager.LogHandler
        public void writeLog(String str) {
            Log.v(LogManager.TAG, str);
        }
    }

    private static class LogHandlerNone implements LogHandler {
        private LogHandlerNone() {
        }

        @Override // io.chirp.connect.helpers.LogManager.LogHandler
        public void writeLog(String str) {
        }
    }

    public static void enableLogs() {
        logHandler = new LogHandlerLogcat();
    }

    public static void writeLog(String str) {
        logHandler.writeLog(str);
    }

    public static void writeLogCat(String str) {
        new LogHandlerLogcat().writeLog(str);
    }
}
