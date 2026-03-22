package com.google.ads.interactivemedia.v3.impl.data;

import android.util.Log;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.SortedSet;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public class j {
    public String adBreakTime;
    public List<Float> adCuePoints;
    public b adData;
    public long adTimeUpdateMs;
    public String adUiStyle;
    public double bufferedTime;
    public Map<String, CompanionData> companions;
    public double currentTime;
    public double duration;
    public int errorCode;
    public String errorMessage;
    public String eventId;
    public String innerError;
    public SortedSet<Float> internalCuePoints;
    public String ln;
    public a logData;
    public String m;
    public String minutes;
    public boolean monitorAppLifecycle;
    public String n;
    public String queryId;
    public String seconds;
    public String streamId;
    public String streamUrl;
    public String translation;
    public String vastEvent;
    public String videoUrl;

    public class a {
        public int errorCode;
        public String errorMessage;
        public String innerError;
        public String type;

        public a() {
        }

        public Map<String, String> constructMap() {
            HashMap map = new HashMap();
            map.put("type", this.type);
            map.put("errorCode", String.valueOf(this.errorCode));
            map.put("errorMessage", this.errorMessage);
            if (this.innerError != null) {
                map.put("innerError", this.innerError);
            }
            return map;
        }

        public String toString() {
            return String.format("Log[type=%s, errorCode=%s, errorMessage=%s, innerError=%s]", this.type, Integer.valueOf(this.errorCode), this.errorMessage, this.innerError);
        }
    }

    public boolean equals(Object obj) {
        return a.a.a.a.a.b.a(this, obj, new String[0]);
    }

    public int hashCode() {
        return a.a.a.a.a.c.a(this, new String[0]);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("JavaScriptMsgData[");
        for (Field field : j.class.getFields()) {
            try {
                Object obj = field.get(this);
                sb.append(field.getName()).append(":");
                sb.append(obj).append(",");
            } catch (IllegalAccessException e) {
                Log.e("IMASDK", "IllegalAccessException occurred", e);
            } catch (IllegalArgumentException e2) {
                Log.e("IMASDK", "IllegalArgumentException occurred", e2);
            }
        }
        return sb.append("]").toString();
    }
}
