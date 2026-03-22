package android.support.v4.widget;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.support.v4.widget.g;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.FilterQueryProvider;
import android.widget.Filterable;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v347\build\apk\classes.dex */
public abstract class f extends BaseAdapter implements g.a, Filterable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected boolean f1167a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected boolean f1168b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Cursor f1169c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected Context f1170d;
    protected int e;
    protected a f;
    protected DataSetObserver g;
    protected g h;
    protected FilterQueryProvider i;

    public abstract View a(Context context, Cursor cursor, ViewGroup viewGroup);

    public abstract void a(View view, Context context, Cursor cursor);

    public f(Context context, Cursor cursor, boolean z) {
        a(context, cursor, z ? 1 : 2);
    }

    void a(Context context, Cursor cursor, int i) {
        if ((i & 1) == 1) {
            i |= 2;
            this.f1168b = true;
        } else {
            this.f1168b = false;
        }
        boolean z = cursor != null;
        this.f1169c = cursor;
        this.f1167a = z;
        this.f1170d = context;
        this.e = z ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i & 2) == 2) {
            this.f = new a();
            this.g = new b();
        } else {
            this.f = null;
            this.g = null;
        }
        if (z) {
            if (this.f != null) {
                cursor.registerContentObserver(this.f);
            }
            if (this.g != null) {
                cursor.registerDataSetObserver(this.g);
            }
        }
    }

    @Override // android.support.v4.widget.g.a
    public Cursor a() {
        return this.f1169c;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (!this.f1167a || this.f1169c == null) {
            return 0;
        }
        return this.f1169c.getCount();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        if (!this.f1167a || this.f1169c == null) {
            return null;
        }
        this.f1169c.moveToPosition(i);
        return this.f1169c;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        if (this.f1167a && this.f1169c != null && this.f1169c.moveToPosition(i)) {
            return this.f1169c.getLong(this.e);
        }
        return 0L;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return true;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (!this.f1167a) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        }
        if (!this.f1169c.moveToPosition(i)) {
            throw new IllegalStateException("couldn't move cursor to position " + i);
        }
        if (view == null) {
            view = a(this.f1170d, this.f1169c, viewGroup);
        }
        a(view, this.f1170d, this.f1169c);
        return view;
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (!this.f1167a) {
            return null;
        }
        this.f1169c.moveToPosition(i);
        if (view == null) {
            view = b(this.f1170d, this.f1169c, viewGroup);
        }
        a(view, this.f1170d, this.f1169c);
        return view;
    }

    public View b(Context context, Cursor cursor, ViewGroup viewGroup) {
        return a(context, cursor, viewGroup);
    }

    @Override // android.support.v4.widget.g.a
    public void a(Cursor cursor) {
        Cursor cursorB = b(cursor);
        if (cursorB != null) {
            cursorB.close();
        }
    }

    public Cursor b(Cursor cursor) {
        if (cursor == this.f1169c) {
            return null;
        }
        Cursor cursor2 = this.f1169c;
        if (cursor2 != null) {
            if (this.f != null) {
                cursor2.unregisterContentObserver(this.f);
            }
            if (this.g != null) {
                cursor2.unregisterDataSetObserver(this.g);
            }
        }
        this.f1169c = cursor;
        if (cursor != null) {
            if (this.f != null) {
                cursor.registerContentObserver(this.f);
            }
            if (this.g != null) {
                cursor.registerDataSetObserver(this.g);
            }
            this.e = cursor.getColumnIndexOrThrow("_id");
            this.f1167a = true;
            notifyDataSetChanged();
            return cursor2;
        }
        this.e = -1;
        this.f1167a = false;
        notifyDataSetInvalidated();
        return cursor2;
    }

    @Override // android.support.v4.widget.g.a
    public CharSequence c(Cursor cursor) {
        return cursor == null ? "" : cursor.toString();
    }

    @Override // android.support.v4.widget.g.a
    public Cursor a(CharSequence charSequence) {
        return this.i != null ? this.i.runQuery(charSequence) : this.f1169c;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.h == null) {
            this.h = new g(this);
        }
        return this.h;
    }

    protected void b() {
        if (this.f1168b && this.f1169c != null && !this.f1169c.isClosed()) {
            this.f1167a = this.f1169c.requery();
        }
    }

    private class a extends ContentObserver {
        a() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            f.this.b();
        }
    }

    private class b extends DataSetObserver {
        b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            f.this.f1167a = true;
            f.this.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            f.this.f1167a = false;
            f.this.notifyDataSetInvalidated();
        }
    }
}
