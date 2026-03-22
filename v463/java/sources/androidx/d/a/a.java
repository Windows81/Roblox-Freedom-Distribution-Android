package androidx.d.a;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.FilterQueryProvider;
import android.widget.Filterable;
import androidx.d.a.b;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
public abstract class a extends BaseAdapter implements Filterable, b.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected boolean f1554a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected boolean f1555b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Cursor f1556c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected Context f1557d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected int f1558e;
    protected C0037a f;
    protected DataSetObserver g;
    protected androidx.d.a.b h;
    protected FilterQueryProvider i;

    public abstract View a(Context context, Cursor cursor, ViewGroup viewGroup);

    public abstract void a(View view, Context context, Cursor cursor);

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    public a(Context context, Cursor cursor, boolean z) {
        a(context, cursor, z ? 1 : 2);
    }

    void a(Context context, Cursor cursor, int i) {
        if ((i & 1) == 1) {
            i |= 2;
            this.f1555b = true;
        } else {
            this.f1555b = false;
        }
        boolean z = cursor != null;
        this.f1556c = cursor;
        this.f1554a = z;
        this.f1557d = context;
        this.f1558e = z ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i & 2) == 2) {
            this.f = new C0037a();
            this.g = new b();
        } else {
            this.f = null;
            this.g = null;
        }
        if (z) {
            C0037a c0037a = this.f;
            if (c0037a != null) {
                cursor.registerContentObserver(c0037a);
            }
            DataSetObserver dataSetObserver = this.g;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    @Override // androidx.d.a.b.a
    public Cursor a() {
        return this.f1556c;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        Cursor cursor;
        if (!this.f1554a || (cursor = this.f1556c) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        Cursor cursor;
        if (!this.f1554a || (cursor = this.f1556c) == null) {
            return null;
        }
        cursor.moveToPosition(i);
        return this.f1556c;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        Cursor cursor;
        if (this.f1554a && (cursor = this.f1556c) != null && cursor.moveToPosition(i)) {
            return this.f1556c.getLong(this.f1558e);
        }
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (!this.f1554a) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        if (!this.f1556c.moveToPosition(i)) {
            throw new IllegalStateException("couldn't move cursor to position " + i);
        }
        if (view == null) {
            view = a(this.f1557d, this.f1556c, viewGroup);
        }
        a(view, this.f1557d, this.f1556c);
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (!this.f1554a) {
            return null;
        }
        this.f1556c.moveToPosition(i);
        if (view == null) {
            view = b(this.f1557d, this.f1556c, viewGroup);
        }
        a(view, this.f1557d, this.f1556c);
        return view;
    }

    public View b(Context context, Cursor cursor, ViewGroup viewGroup) {
        return a(context, cursor, viewGroup);
    }

    public void a(Cursor cursor) {
        Cursor cursorC = c(cursor);
        if (cursorC != null) {
            cursorC.close();
        }
    }

    public Cursor c(Cursor cursor) {
        Cursor cursor2 = this.f1556c;
        if (cursor == cursor2) {
            return null;
        }
        if (cursor2 != null) {
            C0037a c0037a = this.f;
            if (c0037a != null) {
                cursor2.unregisterContentObserver(c0037a);
            }
            DataSetObserver dataSetObserver = this.g;
            if (dataSetObserver != null) {
                cursor2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f1556c = cursor;
        if (cursor != null) {
            C0037a c0037a2 = this.f;
            if (c0037a2 != null) {
                cursor.registerContentObserver(c0037a2);
            }
            DataSetObserver dataSetObserver2 = this.g;
            if (dataSetObserver2 != null) {
                cursor.registerDataSetObserver(dataSetObserver2);
            }
            this.f1558e = cursor.getColumnIndexOrThrow("_id");
            this.f1554a = true;
            notifyDataSetChanged();
        } else {
            this.f1558e = -1;
            this.f1554a = false;
            notifyDataSetInvalidated();
        }
        return cursor2;
    }

    public CharSequence b(Cursor cursor) {
        return cursor == null ? "" : cursor.toString();
    }

    public Cursor a(CharSequence charSequence) {
        FilterQueryProvider filterQueryProvider = this.i;
        if (filterQueryProvider != null) {
            return filterQueryProvider.runQuery(charSequence);
        }
        return this.f1556c;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.h == null) {
            this.h = new androidx.d.a.b(this);
        }
        return this.h;
    }

    protected void b() {
        Cursor cursor;
        if (!this.f1555b || (cursor = this.f1556c) == null || cursor.isClosed()) {
            return;
        }
        this.f1554a = this.f1556c.requery();
    }

    /* JADX INFO: renamed from: androidx.d.a.a$a, reason: collision with other inner class name */
    private class C0037a extends ContentObserver {
        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        C0037a() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            a.this.b();
        }
    }

    private class b extends DataSetObserver {
        b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            a.this.f1554a = true;
            a.this.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            a.this.f1554a = false;
            a.this.notifyDataSetInvalidated();
        }
    }
}
