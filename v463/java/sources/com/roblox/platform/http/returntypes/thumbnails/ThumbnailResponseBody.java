package com.roblox.platform.http.returntypes.thumbnails;

import com.roblox.platform.http.returntypes.ResponseBody;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public class ThumbnailResponseBody implements ResponseBody {
    public final List<ThumbnailData> data;

    public ThumbnailResponseBody(List<ThumbnailData> list) {
        this.data = list;
    }
}
