package android.support.v4.widget;

import android.database.Cursor;
import android.widget.Filter;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
class g extends Filter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    a f1173a;

    interface a {
        Cursor a();

        Cursor a(CharSequence charSequence);

        void a(Cursor cursor);

        CharSequence c(Cursor cursor);
    }

    g(a aVar) {
        this.f1173a = aVar;
    }

    @Override // android.widget.Filter
    public CharSequence convertResultToString(Object obj) {
        return this.f1173a.c((Cursor) obj);
    }

    @Override // android.widget.Filter
    protected Filter.FilterResults performFiltering(CharSequence charSequence) {
        Cursor cursorA = this.f1173a.a(charSequence);
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (cursorA != null) {
            filterResults.count = cursorA.getCount();
            filterResults.values = cursorA;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    @Override // android.widget.Filter
    protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        Cursor cursorA = this.f1173a.a();
        if (filterResults.values != null && filterResults.values != cursorA) {
            this.f1173a.a((Cursor) filterResults.values);
        }
    }
}
