package com.roblox.client.startup;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public enum e {
    SYSTEM(0),
    SHELL_PROCESS_RESTART(1),
    SHELL_PROCESS_RESTART_FOR_RESULT(2),
    APP_RESTART(3),
    AFTER_SIGN_UP(4),
    AFTER_LOGIN(5),
    PROTOCOL_LAUNCH(6),
    LOG_OUT(7),
    REMINDER_NOTIFICATION(8),
    LOADED_FROM_PUSH_NOTIFICATION(9),
    AFTER_LOGIN_FOR_RESULT(10);

    private int l;

    e(int i) {
        this.l = i;
    }
}
