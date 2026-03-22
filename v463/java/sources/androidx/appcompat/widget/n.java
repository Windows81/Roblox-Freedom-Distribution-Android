package androidx.appcompat.widget;

import android.R;
import android.app.SearchManager;
import android.app.SearchableInfo;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.Cursor;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.a;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.WeakHashMap;

/* JADX INFO: loaded from: C:\Users\USER\Projects\rbx-apk\.\v463\build\apk\classes.dex */
class n extends androidx.d.a.c implements View.OnClickListener {
    private final SearchManager j;
    private final SearchView k;
    private final SearchableInfo l;
    private final Context m;
    private final WeakHashMap<String, Drawable.ConstantState> n;
    private final int o;
    private boolean p;
    private int q;
    private ColorStateList r;
    private int s;
    private int t;
    private int u;
    private int v;
    private int w;
    private int x;

    @Override // androidx.d.a.a, android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return false;
    }

    public n(Context context, SearchView searchView, SearchableInfo searchableInfo, WeakHashMap<String, Drawable.ConstantState> weakHashMap) {
        super(context, searchView.getSuggestionRowLayout(), null, true);
        this.p = false;
        this.q = 1;
        this.s = -1;
        this.t = -1;
        this.u = -1;
        this.v = -1;
        this.w = -1;
        this.x = -1;
        this.j = (SearchManager) this.f1557d.getSystemService("search");
        this.k = searchView;
        this.l = searchableInfo;
        this.o = searchView.getSuggestionCommitIconResId();
        this.m = context;
        this.n = weakHashMap;
    }

    public void a(int i) {
        this.q = i;
    }

    @Override // androidx.d.a.a, androidx.d.a.b.a
    public Cursor a(CharSequence charSequence) {
        String string = charSequence == null ? "" : charSequence.toString();
        if (this.k.getVisibility() == 0 && this.k.getWindowVisibility() == 0) {
            try {
                Cursor cursorA = a(this.l, string, 50);
                if (cursorA != null) {
                    cursorA.getCount();
                    return cursorA;
                }
            } catch (RuntimeException e2) {
                Log.w("SuggestionsAdapter", "Search suggestions query threw an exception.", e2);
            }
        }
        return null;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        d(a());
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetInvalidated() {
        super.notifyDataSetInvalidated();
        d(a());
    }

    private void d(Cursor cursor) {
        Bundle extras = cursor != null ? cursor.getExtras() : null;
        if (extras == null || extras.getBoolean("in_progress")) {
        }
    }

    @Override // androidx.d.a.a, androidx.d.a.b.a
    public void a(Cursor cursor) {
        if (this.p) {
            Log.w("SuggestionsAdapter", "Tried to change cursor after adapter was closed.");
            if (cursor != null) {
                cursor.close();
                return;
            }
            return;
        }
        try {
            super.a(cursor);
            if (cursor != null) {
                this.s = cursor.getColumnIndex("suggest_text_1");
                this.t = cursor.getColumnIndex("suggest_text_2");
                this.u = cursor.getColumnIndex("suggest_text_2_url");
                this.v = cursor.getColumnIndex("suggest_icon_1");
                this.w = cursor.getColumnIndex("suggest_icon_2");
                this.x = cursor.getColumnIndex("suggest_flags");
            }
        } catch (Exception e2) {
            Log.e("SuggestionsAdapter", "error changing cursor and caching columns", e2);
        }
    }

    @Override // androidx.d.a.c, androidx.d.a.a
    public View a(Context context, Cursor cursor, ViewGroup viewGroup) {
        View viewA = super.a(context, cursor, viewGroup);
        viewA.setTag(new a(viewA));
        ((ImageView) viewA.findViewById(a.f.edit_query)).setImageResource(this.o);
        return viewA;
    }

    private static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final TextView f1016a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final TextView f1017b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final ImageView f1018c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final ImageView f1019d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final ImageView f1020e;

        public a(View view) {
            this.f1016a = (TextView) view.findViewById(R.id.text1);
            this.f1017b = (TextView) view.findViewById(R.id.text2);
            this.f1018c = (ImageView) view.findViewById(R.id.icon1);
            this.f1019d = (ImageView) view.findViewById(R.id.icon2);
            this.f1020e = (ImageView) view.findViewById(a.f.edit_query);
        }
    }

    @Override // androidx.d.a.a
    public void a(View view, Context context, Cursor cursor) {
        CharSequence charSequenceA;
        a aVar = (a) view.getTag();
        int i = this.x;
        int i2 = i != -1 ? cursor.getInt(i) : 0;
        if (aVar.f1016a != null) {
            a(aVar.f1016a, a(cursor, this.s));
        }
        if (aVar.f1017b != null) {
            String strA = a(cursor, this.u);
            if (strA != null) {
                charSequenceA = b((CharSequence) strA);
            } else {
                charSequenceA = a(cursor, this.t);
            }
            if (TextUtils.isEmpty(charSequenceA)) {
                if (aVar.f1016a != null) {
                    aVar.f1016a.setSingleLine(false);
                    aVar.f1016a.setMaxLines(2);
                }
            } else if (aVar.f1016a != null) {
                aVar.f1016a.setSingleLine(true);
                aVar.f1016a.setMaxLines(1);
            }
            a(aVar.f1017b, charSequenceA);
        }
        if (aVar.f1018c != null) {
            a(aVar.f1018c, e(cursor), 4);
        }
        if (aVar.f1019d != null) {
            a(aVar.f1019d, f(cursor), 8);
        }
        int i3 = this.q;
        if (i3 == 2 || (i3 == 1 && (i2 & 1) != 0)) {
            aVar.f1020e.setVisibility(0);
            aVar.f1020e.setTag(aVar.f1016a.getText());
            aVar.f1020e.setOnClickListener(this);
            return;
        }
        aVar.f1020e.setVisibility(8);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Object tag = view.getTag();
        if (tag instanceof CharSequence) {
            this.k.onQueryRefine((CharSequence) tag);
        }
    }

    private CharSequence b(CharSequence charSequence) {
        if (this.r == null) {
            TypedValue typedValue = new TypedValue();
            this.f1557d.getTheme().resolveAttribute(a.C0012a.textColorSearchUrl, typedValue, true);
            this.r = this.f1557d.getResources().getColorStateList(typedValue.resourceId);
        }
        SpannableString spannableString = new SpannableString(charSequence);
        spannableString.setSpan(new TextAppearanceSpan(null, 0, 0, this.r, null), 0, charSequence.length(), 33);
        return spannableString;
    }

    private void a(TextView textView, CharSequence charSequence) {
        textView.setText(charSequence);
        if (TextUtils.isEmpty(charSequence)) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
        }
    }

    private Drawable e(Cursor cursor) {
        int i = this.v;
        if (i == -1) {
            return null;
        }
        Drawable drawableA = a(cursor.getString(i));
        return drawableA != null ? drawableA : g(cursor);
    }

    private Drawable f(Cursor cursor) {
        int i = this.w;
        if (i == -1) {
            return null;
        }
        return a(cursor.getString(i));
    }

    private void a(ImageView imageView, Drawable drawable, int i) {
        imageView.setImageDrawable(drawable);
        if (drawable == null) {
            imageView.setVisibility(i);
            return;
        }
        imageView.setVisibility(0);
        drawable.setVisible(false, false);
        drawable.setVisible(true, false);
    }

    @Override // androidx.d.a.a, androidx.d.a.b.a
    public CharSequence b(Cursor cursor) {
        String strA;
        String strA2;
        if (cursor == null) {
            return null;
        }
        String strA3 = a(cursor, "suggest_intent_query");
        if (strA3 != null) {
            return strA3;
        }
        if (this.l.shouldRewriteQueryFromData() && (strA2 = a(cursor, "suggest_intent_data")) != null) {
            return strA2;
        }
        if (!this.l.shouldRewriteQueryFromText() || (strA = a(cursor, "suggest_text_1")) == null) {
            return null;
        }
        return strA;
    }

    @Override // androidx.d.a.a, android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getView(i, view, viewGroup);
        } catch (RuntimeException e2) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e2);
            View viewA = a(this.f1557d, this.f1556c, viewGroup);
            if (viewA != null) {
                ((a) viewA.getTag()).f1016a.setText(e2.toString());
            }
            return viewA;
        }
    }

    @Override // androidx.d.a.a, android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        try {
            return super.getDropDownView(i, view, viewGroup);
        } catch (RuntimeException e2) {
            Log.w("SuggestionsAdapter", "Search suggestions cursor threw exception.", e2);
            View viewB = b(this.f1557d, this.f1556c, viewGroup);
            if (viewB != null) {
                ((a) viewB.getTag()).f1016a.setText(e2.toString());
            }
            return viewB;
        }
    }

    private Drawable a(String str) {
        if (str == null || str.isEmpty() || "0".equals(str)) {
            return null;
        }
        try {
            int i = Integer.parseInt(str);
            String str2 = "android.resource://" + this.m.getPackageName() + "/" + i;
            Drawable drawableB = b(str2);
            if (drawableB != null) {
                return drawableB;
            }
            Drawable drawableA = androidx.core.a.b.a(this.m, i);
            a(str2, drawableA);
            return drawableA;
        } catch (Resources.NotFoundException unused) {
            Log.w("SuggestionsAdapter", "Icon resource not found: " + str);
            return null;
        } catch (NumberFormatException unused2) {
            Drawable drawableB2 = b(str);
            if (drawableB2 != null) {
                return drawableB2;
            }
            Drawable drawableB3 = b(Uri.parse(str));
            a(str, drawableB3);
            return drawableB3;
        }
    }

    private Drawable b(Uri uri) {
        try {
            if ("android.resource".equals(uri.getScheme())) {
                try {
                    return a(uri);
                } catch (Resources.NotFoundException unused) {
                    throw new FileNotFoundException("Resource does not exist: " + uri);
                }
            }
            InputStream inputStreamOpenInputStream = this.m.getContentResolver().openInputStream(uri);
            if (inputStreamOpenInputStream == null) {
                throw new FileNotFoundException("Failed to open " + uri);
            }
            try {
                return Drawable.createFromStream(inputStreamOpenInputStream, null);
            } finally {
                try {
                    inputStreamOpenInputStream.close();
                } catch (IOException e2) {
                    Log.e("SuggestionsAdapter", "Error closing icon stream for " + uri, e2);
                }
            }
        } catch (FileNotFoundException e3) {
            Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e3.getMessage());
            return null;
        }
        Log.w("SuggestionsAdapter", "Icon not found: " + uri + ", " + e3.getMessage());
        return null;
    }

    private Drawable b(String str) {
        Drawable.ConstantState constantState = this.n.get(str);
        if (constantState == null) {
            return null;
        }
        return constantState.newDrawable();
    }

    private void a(String str, Drawable drawable) {
        if (drawable != null) {
            this.n.put(str, drawable.getConstantState());
        }
    }

    private Drawable g(Cursor cursor) {
        Drawable drawableA = a(this.l.getSearchActivity());
        return drawableA != null ? drawableA : this.f1557d.getPackageManager().getDefaultActivityIcon();
    }

    private Drawable a(ComponentName componentName) {
        String strFlattenToShortString = componentName.flattenToShortString();
        if (this.n.containsKey(strFlattenToShortString)) {
            Drawable.ConstantState constantState = this.n.get(strFlattenToShortString);
            if (constantState == null) {
                return null;
            }
            return constantState.newDrawable(this.m.getResources());
        }
        Drawable drawableB = b(componentName);
        this.n.put(strFlattenToShortString, drawableB != null ? drawableB.getConstantState() : null);
        return drawableB;
    }

    private Drawable b(ComponentName componentName) {
        PackageManager packageManager = this.f1557d.getPackageManager();
        try {
            ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, 128);
            int iconResource = activityInfo.getIconResource();
            if (iconResource == 0) {
                return null;
            }
            Drawable drawable = packageManager.getDrawable(componentName.getPackageName(), iconResource, activityInfo.applicationInfo);
            if (drawable != null) {
                return drawable;
            }
            Log.w("SuggestionsAdapter", "Invalid icon resource " + iconResource + " for " + componentName.flattenToShortString());
            return null;
        } catch (PackageManager.NameNotFoundException e2) {
            Log.w("SuggestionsAdapter", e2.toString());
            return null;
        }
    }

    public static String a(Cursor cursor, String str) {
        return a(cursor, cursor.getColumnIndex(str));
    }

    private static String a(Cursor cursor, int i) {
        if (i == -1) {
            return null;
        }
        try {
            return cursor.getString(i);
        } catch (Exception e2) {
            Log.e("SuggestionsAdapter", "unexpected error retrieving valid column from cursor, did the remote process die?", e2);
            return null;
        }
    }

    Drawable a(Uri uri) throws FileNotFoundException {
        int identifier;
        String authority = uri.getAuthority();
        if (TextUtils.isEmpty(authority)) {
            throw new FileNotFoundException("No authority: " + uri);
        }
        try {
            Resources resourcesForApplication = this.f1557d.getPackageManager().getResourcesForApplication(authority);
            List<String> pathSegments = uri.getPathSegments();
            if (pathSegments == null) {
                throw new FileNotFoundException("No path: " + uri);
            }
            int size = pathSegments.size();
            if (size == 1) {
                try {
                    identifier = Integer.parseInt(pathSegments.get(0));
                } catch (NumberFormatException unused) {
                    throw new FileNotFoundException("Single path segment is not a resource ID: " + uri);
                }
            } else if (size == 2) {
                identifier = resourcesForApplication.getIdentifier(pathSegments.get(1), pathSegments.get(0), authority);
            } else {
                throw new FileNotFoundException("More than two path segments: " + uri);
            }
            if (identifier == 0) {
                throw new FileNotFoundException("No resource found for: " + uri);
            }
            return resourcesForApplication.getDrawable(identifier);
        } catch (PackageManager.NameNotFoundException unused2) {
            throw new FileNotFoundException("No package found for authority: " + uri);
        }
    }

    Cursor a(SearchableInfo searchableInfo, String str, int i) {
        String suggestAuthority;
        String[] strArr = null;
        if (searchableInfo == null || (suggestAuthority = searchableInfo.getSuggestAuthority()) == null) {
            return null;
        }
        Uri.Builder builderFragment = new Uri.Builder().scheme("content").authority(suggestAuthority).query("").fragment("");
        String suggestPath = searchableInfo.getSuggestPath();
        if (suggestPath != null) {
            builderFragment.appendEncodedPath(suggestPath);
        }
        builderFragment.appendPath("search_suggest_query");
        String suggestSelection = searchableInfo.getSuggestSelection();
        if (suggestSelection != null) {
            strArr = new String[]{str};
        } else {
            builderFragment.appendPath(str);
        }
        String[] strArr2 = strArr;
        if (i > 0) {
            builderFragment.appendQueryParameter("limit", String.valueOf(i));
        }
        return this.f1557d.getContentResolver().query(builderFragment.build(), null, suggestSelection, strArr2, null);
    }
}
