package android.support.v4.media;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.os.ResultReceiver;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public final class MediaBrowserCompat {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final boolean f970a = Log.isLoggable("MediaBrowserCompat", 3);

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
        private final int f973a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final MediaDescriptionCompat f974b;

        MediaItem(Parcel parcel) {
            this.f973a = parcel.readInt();
            this.f974b = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f973a);
            this.f974b.writeToParcel(parcel, i);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("MediaItem{");
            sb.append("mFlags=").append(this.f973a);
            sb.append(", mDescription=").append(this.f974b);
            sb.append('}');
            return sb.toString();
        }
    }

    public static abstract class b {
        public void a(MediaItem mediaItem) {
        }

        public void a(String str) {
        }
    }

    public static abstract class c {
        public void a(String str, Bundle bundle, List<MediaItem> list) {
        }

        public void a(String str, Bundle bundle) {
        }
    }

    public static abstract class a {
        public void a(String str, Bundle bundle, Bundle bundle2) {
        }

        public void b(String str, Bundle bundle, Bundle bundle2) {
        }

        public void c(String str, Bundle bundle, Bundle bundle2) {
        }
    }

    private static class ItemReceiver extends ResultReceiver {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f972d;
        private final b e;

        @Override // android.support.v4.os.ResultReceiver
        protected void a(int i, Bundle bundle) {
            if (bundle != null) {
                bundle.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            }
            if (i != 0 || bundle == null || !bundle.containsKey("media_item")) {
                this.e.a(this.f972d);
                return;
            }
            Parcelable parcelable = bundle.getParcelable("media_item");
            if (parcelable == null || (parcelable instanceof MediaItem)) {
                this.e.a((MediaItem) parcelable);
            } else {
                this.e.a(this.f972d);
            }
        }
    }

    private static class SearchResultReceiver extends ResultReceiver {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f975d;
        private final Bundle e;
        private final c f;

        @Override // android.support.v4.os.ResultReceiver
        protected void a(int i, Bundle bundle) {
            if (bundle != null) {
                bundle.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            }
            if (i != 0 || bundle == null || !bundle.containsKey("search_results")) {
                this.f.a(this.f975d, this.e);
                return;
            }
            Parcelable[] parcelableArray = bundle.getParcelableArray("search_results");
            ArrayList arrayList = null;
            if (parcelableArray != null) {
                ArrayList arrayList2 = new ArrayList();
                for (Parcelable parcelable : parcelableArray) {
                    arrayList2.add((MediaItem) parcelable);
                }
                arrayList = arrayList2;
            }
            this.f.a(this.f975d, this.e, arrayList);
        }
    }

    private static class CustomActionResultReceiver extends ResultReceiver {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final String f971d;
        private final Bundle e;
        private final a f;

        @Override // android.support.v4.os.ResultReceiver
        protected void a(int i, Bundle bundle) {
            if (this.f != null) {
                switch (i) {
                    case -1:
                        this.f.c(this.f971d, this.e, bundle);
                        break;
                    case 0:
                        this.f.b(this.f971d, this.e, bundle);
                        break;
                    case 1:
                        this.f.a(this.f971d, this.e, bundle);
                        break;
                    default:
                        Log.w("MediaBrowserCompat", "Unknown result code: " + i + " (extras=" + this.e + ", resultData=" + bundle + ")");
                        break;
                }
            }
        }
    }
}
