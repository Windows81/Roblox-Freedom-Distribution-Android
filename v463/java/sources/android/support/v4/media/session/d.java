package android.support.v4.media.session;

import android.media.session.MediaSession;

/* JADX INFO: loaded from: classes.dex */
class d {

    static class a {
        public static Object a(Object obj) {
            return ((MediaSession.QueueItem) obj).getDescription();
        }

        public static long b(Object obj) {
            return ((MediaSession.QueueItem) obj).getQueueId();
        }
    }
}
