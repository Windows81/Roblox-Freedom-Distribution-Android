package com.roblox.client.game;

import android.content.Intent;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class c {
    public static HashMap<String, String> a(Intent intent) {
        String dataString;
        String strGroup;
        HashMap<String, String> map = new HashMap<>();
        Pattern patternCompile = Pattern.compile("^robloxmobile://(.*)", 2);
        if (intent != null && "android.intent.action.VIEW".equals(intent.getAction()) && (dataString = intent.getDataString()) != null) {
            Matcher matcher = patternCompile.matcher(dataString);
            if (matcher.matches() && (strGroup = matcher.group(1)) != null) {
                for (String str : strGroup.split("&")) {
                    String[] strArrSplit = str.split("=");
                    if (strArrSplit.length > 1) {
                        map.put(strArrSplit[0].toLowerCase(), strArrSplit[1]);
                        map.put(null, strGroup);
                    } else if (strArrSplit.length == 1 && strArrSplit[0] != null && !strArrSplit[0].isEmpty()) {
                        map.put(null, strArrSplit[0]);
                    }
                }
            }
        }
        return map;
    }
}
