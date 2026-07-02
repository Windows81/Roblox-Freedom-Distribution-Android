package com.roblox.client.pushnotification;

import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class p {
    public static boolean a(String str) {
        try {
            return str.equals(UUID.fromString(str).toString());
        } catch (IllegalArgumentException e) {
            return false;
        } catch (NullPointerException e2) {
            return false;
        }
    }
}
