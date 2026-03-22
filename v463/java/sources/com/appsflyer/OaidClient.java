package com.appsflyer;

import android.content.Context;
import com.appsflyer.oaid.OaidClient;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
@Deprecated
class OaidClient {
    OaidClient() {
    }

    @Deprecated
    public static Info fetch(Context context) {
        OaidClient.Info infoFetch = new com.appsflyer.oaid.OaidClient(context).fetch();
        if (infoFetch != null) {
            return new Info(infoFetch.getId(), infoFetch.getLat());
        }
        return null;
    }

    @Deprecated
    static class Info {
        private final String id;
        private final Boolean lat;

        @Deprecated
        public Info(String str, Boolean bool) {
            this.id = str;
            this.lat = bool;
        }

        @Deprecated
        public String getId() {
            return this.id;
        }

        @Deprecated
        public Boolean isLat() {
            return this.lat;
        }
    }
}
