package android.support.v4.media;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.os.ResultReceiver;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public final class MediaBrowserCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final boolean f483a = Log.isLoggable("MediaBrowserCompat", 3);

    public static abstract class a {
        public void a(String str, Bundle bundle, Bundle bundle2) {
        }

        public void b(String str, Bundle bundle, Bundle bundle2) {
        }

        public void c(String str, Bundle bundle, Bundle bundle2) {
        }
    }

    public static abstract class b {
        public void a(MediaItem mediaItem) {
        }

        public void a(String str) {
        }
    }

    public static abstract class c {
        public void a(String str, Bundle bundle) {
        }

        public void a(String str, Bundle bundle, List<MediaItem> list) {
        }
    }

    public static class MediaItem implements Parcelable {
        public static final Parcelable.Creator<MediaItem> CREATOR = new Parcelable.Creator<MediaItem>() { // from class: android.support.v4.media.MediaBrowserCompat.MediaItem.1
            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MediaItem createFromParcel(Parcel parcel) {
                return new MediaItem(parcel);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MediaItem[] newArray(int i) {
                return new MediaItem[i];
            }
        };

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f488a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final MediaDescriptionCompat f489b;

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        MediaItem(Parcel parcel) {
            this.f488a = parcel.readInt();
            this.f489b = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f488a);
            this.f489b.writeToParcel(parcel, i);
        }

        public String toString() {
            return "MediaItem{mFlags=" + this.f488a + ", mDescription=" + this.f489b + '}';
        }
    }

    private static class ItemReceiver extends ResultReceiver {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f486d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final b f487e;

        @Override // android.support.v4.os.ResultReceiver
        protected void a(int i, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            if (i != 0 || bundle == null || !bundle.containsKey("media_item")) {
                this.f487e.a(this.f486d);
                return;
            }
            Parcelable parcelable = bundle.getParcelable("media_item");
            if (parcelable == null || (parcelable instanceof MediaItem)) {
                this.f487e.a((MediaItem) parcelable);
            } else {
                this.f487e.a(this.f486d);
            }
        }
    }

    private static class SearchResultReceiver extends ResultReceiver {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f490d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Bundle f491e;
        private final c f;

        @Override // android.support.v4.os.ResultReceiver
        protected void a(int i, Bundle bundle) {
            MediaSessionCompat.a(bundle);
            if (i != 0 || bundle == null || !bundle.containsKey("search_results")) {
                this.f.a(this.f490d, this.f491e);
                return;
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray("search_results");
            ArrayList arrayList = null;
            if (parcelableArray != null) {
                arrayList = new ArrayList();
                for (Parcelable parcelable : parcelableArray) {
                    arrayList.add((MediaItem) parcelable);
                }
            }
            this.f.a(this.f490d, this.f491e, arrayList);
        }
    }

    private static class CustomActionResultReceiver extends ResultReceiver {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f484d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Bundle f485e;
        private final a f;

        @Override // android.support.v4.os.ResultReceiver
        protected void a(int i, Bundle bundle) {
            if (this.f == null) {
                return;
            }
            MediaSessionCompat.a(bundle);
            if (i == -1) {
                this.f.c(this.f484d, this.f485e, bundle);
                return;
            }
            if (i == 0) {
                this.f.b(this.f484d, this.f485e, bundle);
                return;
            }
            if (i == 1) {
                this.f.a(this.f484d, this.f485e, bundle);
                return;
            }
            Log.w("MediaBrowserCompat", "Unknown result code: " + i + " (extras=" + this.f485e + ", resultData=" + bundle + ")");
        }
    }
}
