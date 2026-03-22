package com.google.firebase.messaging;

import java.util.Locale;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class d extends Exception {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f5302a;

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    d(String str) {
        super(str);
        int i = 0;
        if (str != null) {
            String lowerCase = str.toLowerCase(Locale.US);
            byte b2 = -1;
            switch (lowerCase.hashCode()) {
                case -1743242157:
                    if (lowerCase.equals("service_not_available")) {
                        b2 = 3;
                    }
                    break;
                case -1290953729:
                    if (lowerCase.equals("toomanymessages")) {
                        b2 = 4;
                    }
                    break;
                case -920906446:
                    if (lowerCase.equals("invalid_parameters")) {
                        b2 = 0;
                    }
                    break;
                case -617027085:
                    if (lowerCase.equals("messagetoobig")) {
                        b2 = 2;
                    }
                    break;
                case -95047692:
                    if (lowerCase.equals("missing_to")) {
                        b2 = 1;
                    }
                    break;
            }
            if (b2 == 0 || b2 == 1) {
                i = 1;
            } else if (b2 == 2) {
                i = 2;
            } else if (b2 == 3) {
                i = 3;
            } else if (b2 == 4) {
                i = 4;
            }
        }
        this.f5302a = i;
    }
}
