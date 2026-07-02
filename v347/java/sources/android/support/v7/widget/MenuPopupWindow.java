package android.support.v7.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.support.v7.view.menu.ListMenuItemView;
import android.transition.Transition;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes.dex */
public class MenuPopupWindow extends ListPopupWindow implements MenuItemHoverListener {
    private static final String TAG = "MenuPopupWindow";
    private static Method sSetTouchModalMethod;
    private MenuItemHoverListener mHoverListener;

    static {
        try {
            sSetTouchModalMethod = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
        } catch (NoSuchMethodException e) {
            Log.i(TAG, "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    public MenuPopupWindow(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    @Override // android.support.v7.widget.ListPopupWindow
    o createDropDownListView(Context context, boolean z) {
        MenuDropDownListView menuDropDownListView = new MenuDropDownListView(context, z);
        menuDropDownListView.setHoverListener(this);
        return menuDropDownListView;
    }

    public void setEnterTransition(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.mPopup.setEnterTransition((Transition) obj);
        }
    }

    public void setExitTransition(Object obj) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.mPopup.setExitTransition((Transition) obj);
        }
    }

    public void setHoverListener(MenuItemHoverListener menuItemHoverListener) {
        this.mHoverListener = menuItemHoverListener;
    }

    public void setTouchModal(boolean z) {
        if (sSetTouchModalMethod != null) {
            try {
                sSetTouchModalMethod.invoke(this.mPopup, Boolean.valueOf(z));
            } catch (Exception e) {
                Log.i(TAG, "Could not invoke setTouchModal() on PopupWindow. Oh well.");
            }
        }
    }

    @Override // android.support.v7.widget.MenuItemHoverListener
    public void onItemHoverEnter(android.support.v7.view.menu.h hVar, MenuItem menuItem) {
        if (this.mHoverListener != null) {
            this.mHoverListener.onItemHoverEnter(hVar, menuItem);
        }
    }

    @Override // android.support.v7.widget.MenuItemHoverListener
    public void onItemHoverExit(android.support.v7.view.menu.h hVar, MenuItem menuItem) {
        if (this.mHoverListener != null) {
            this.mHoverListener.onItemHoverExit(hVar, menuItem);
        }
    }

    public static class MenuDropDownListView extends o {
        final int mAdvanceKey;
        private MenuItemHoverListener mHoverListener;
        private MenuItem mHoveredMenuItem;
        final int mRetreatKey;

        @Override // android.support.v7.widget.o, android.view.ViewGroup, android.view.View
        public /* bridge */ /* synthetic */ boolean hasFocus() {
            return super.hasFocus();
        }

        @Override // android.support.v7.widget.o, android.view.View
        public /* bridge */ /* synthetic */ boolean hasWindowFocus() {
            return super.hasWindowFocus();
        }

        @Override // android.support.v7.widget.o, android.view.View
        public /* bridge */ /* synthetic */ boolean isFocused() {
            return super.isFocused();
        }

        @Override // android.support.v7.widget.o, android.view.View
        public /* bridge */ /* synthetic */ boolean isInTouchMode() {
            return super.isInTouchMode();
        }

        @Override // android.support.v7.widget.o
        public /* bridge */ /* synthetic */ boolean onForwardedEvent(MotionEvent motionEvent, int i) {
            return super.onForwardedEvent(motionEvent, i);
        }

        public MenuDropDownListView(Context context, boolean z) {
            super(context, z);
            Configuration configuration = context.getResources().getConfiguration();
            if (Build.VERSION.SDK_INT >= 17 && 1 == configuration.getLayoutDirection()) {
                this.mAdvanceKey = 21;
                this.mRetreatKey = 22;
            } else {
                this.mAdvanceKey = 22;
                this.mRetreatKey = 21;
            }
        }

        public void setHoverListener(MenuItemHoverListener menuItemHoverListener) {
            this.mHoverListener = menuItemHoverListener;
        }

        public void clearSelection() {
            setSelection(-1);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i == this.mAdvanceKey) {
                if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                    performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                }
                return true;
            }
            if (listMenuItemView != null && i == this.mRetreatKey) {
                setSelection(-1);
                ((android.support.v7.view.menu.g) getAdapter()).a().a(false);
                return true;
            }
            return super.onKeyDown(i, keyEvent);
        }

        @Override // android.view.View
        public boolean onHoverEvent(MotionEvent motionEvent) {
            int headersCount;
            android.support.v7.view.menu.g gVar;
            android.support.v7.view.menu.j item;
            int iPointToPosition;
            int i;
            if (this.mHoverListener != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    headersCount = headerViewListAdapter.getHeadersCount();
                    gVar = (android.support.v7.view.menu.g) headerViewListAdapter.getWrappedAdapter();
                } else {
                    headersCount = 0;
                    gVar = (android.support.v7.view.menu.g) adapter;
                }
                if (motionEvent.getAction() == 10 || (iPointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) == -1 || (i = iPointToPosition - headersCount) < 0 || i >= gVar.getCount()) {
                    item = null;
                } else {
                    item = gVar.getItem(i);
                }
                MenuItem menuItem = this.mHoveredMenuItem;
                if (menuItem != item) {
                    android.support.v7.view.menu.h hVarA = gVar.a();
                    if (menuItem != null) {
                        this.mHoverListener.onItemHoverExit(hVarA, menuItem);
                    }
                    this.mHoveredMenuItem = item;
                    if (item != null) {
                        this.mHoverListener.onItemHoverEnter(hVarA, item);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }
    }
}
