.class public Lcom/roblox/client/e;
.super Lcom/roblox/client/FragmentGlView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/roblox/client/e$a;
    }
.end annotation


# instance fields
.field private a:Lcom/roblox/engine/components/NativeTextBoxInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/roblox/client/FragmentGlView;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/e;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/roblox/client/e;->c()V

    return-void
.end method

.method static synthetic a(Lcom/roblox/client/e;Lcom/roblox/engine/components/NativeTextBoxInfo;Landroid/widget/EditText;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/roblox/client/e;->a(Lcom/roblox/engine/components/NativeTextBoxInfo;Landroid/widget/EditText;)V

    return-void
.end method

.method private a(Lcom/roblox/engine/components/NativeTextBoxInfo;Landroid/widget/EditText;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 216
    invoke-virtual {p2}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 218
    invoke-virtual {p0}, Lcom/roblox/client/e;->getCurrentScreenDensity()F

    move-result v3

    .line 220
    if-eqz p1, :cond_2

    iget v2, p1, Lcom/roblox/engine/components/NativeTextBoxInfo;->x:F

    :goto_0
    mul-float v4, v3, v2

    .line 221
    if-eqz p1, :cond_3

    iget v2, p1, Lcom/roblox/engine/components/NativeTextBoxInfo;->y:F

    :goto_1
    mul-float v5, v3, v2

    .line 222
    if-eqz p1, :cond_4

    iget v2, p1, Lcom/roblox/engine/components/NativeTextBoxInfo;->width:F

    :goto_2
    mul-float/2addr v2, v3

    .line 223
    if-eqz p1, :cond_0

    iget v1, p1, Lcom/roblox/engine/components/NativeTextBoxInfo;->height:F

    :cond_0
    mul-float/2addr v1, v3

    .line 225
    float-to-int v5, v5

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 226
    float-to-int v2, v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 227
    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 228
    float-to-int v1, v4

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 230
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    if-eqz p1, :cond_1

    .line 232
    const v0, 0x3f4b851f    # 0.795f

    .line 233
    iget v1, p1, Lcom/roblox/engine/components/NativeTextBoxInfo;->fontSize:F

    mul-float/2addr v1, v3

    mul-float/2addr v0, v1

    .line 234
    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 236
    iget-boolean v0, p1, Lcom/roblox/engine/components/NativeTextBoxInfo;->multiline:Z

    if-eqz v0, :cond_5

    .line 237
    const v0, 0x20001

    .line 238
    invoke-virtual {p2}, Landroid/widget/EditText;->getInputType()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 239
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 241
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 251
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v2, v1

    .line 220
    goto :goto_0

    :cond_3
    move v2, v1

    .line 221
    goto :goto_1

    :cond_4
    move v2, v1

    .line 222
    goto :goto_2

    .line 244
    :cond_5
    invoke-virtual {p2}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    if-eq v0, v6, :cond_1

    .line 245
    invoke-virtual {p2, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 247
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_3
.end method

.method private c()V
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/roblox/client/e;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/h;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 119
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/roblox/client/e;->stopDataModel()V

    .line 123
    return-void
.end method

.method protected a(J)V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/roblox/client/e;->mUIThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/client/e$2;

    invoke-direct {v1, p0}, Lcom/roblox/client/e$2;-><init>(Lcom/roblox/client/e;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    return-void
.end method

.method protected a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 278
    const-class v0, Lcom/roblox/client/f/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-static {}, Lcom/roblox/client/b;->v()J

    move-result-wide v2

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/roblox/client/e;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/roblox/client/e;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/roblox/client/e;->isRemoving()Z

    move-result v1

    if-nez v1, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/roblox/client/e;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/roblox/client/e;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/l;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 299
    const-string v1, "rbx.catalog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showPromo() title:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " description:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    new-instance v1, Lcom/roblox/client/f/a;

    invoke-direct {v1}, Lcom/roblox/client/f/a;-><init>()V

    .line 302
    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/roblox/client/f/a;->setStyle(II)V

    .line 304
    invoke-virtual {p0}, Lcom/roblox/client/e;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f06004e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 306
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 307
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v4, "dialogWidth"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 308
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "dialogHeight"

    const/4 v4, -0x2

    invoke-virtual {v3, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 309
    const-string v2, "assetId"

    invoke-virtual {v3, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 310
    const-string v2, "title"

    invoke-virtual {v3, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v2, "description"

    invoke-virtual {v3, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    const-string v2, "thumbnail"

    invoke-virtual {v3, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v1, v3}, Lcom/roblox/client/f/a;->setArguments(Landroid/os/Bundle;)V

    .line 315
    invoke-virtual {p0}, Lcom/roblox/client/e;->getFragmentManager()Landroid/support/v4/app/l;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/roblox/client/f/a;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 318
    const-string v0, "PREF_NAME_CATALOG_PROMO_SHOWN"

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/roblox/client/RobloxSettings;->putUserInPreferencesList(Ljava/lang/String;Ljava/lang/String;J)V

    .line 320
    :cond_0
    return-void
.end method

.method protected b()V
    .locals 6

    .prologue
    .line 255
    invoke-static {}, Lcom/roblox/client/b;->v()J

    move-result-wide v0

    .line 256
    const-string v2, "PREF_NAME_CATALOG_PROMO_SHOWN"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/roblox/client/i/h;->a()Lcom/roblox/client/i/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/roblox/client/i/h;->b()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/roblox/client/RobloxSettings;->isUserInPreferencesList(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v2

    .line 258
    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 259
    const-string v2, "rbx.catalog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCatalogPromo() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v2, Lcom/roblox/client/h/n;

    new-instance v3, Lcom/roblox/client/e$5;

    invoke-direct {v3, p0}, Lcom/roblox/client/e$5;-><init>(Lcom/roblox/client/e;)V

    invoke-direct {v2, v0, v1, v3}, Lcom/roblox/client/h/n;-><init>(JLcom/roblox/client/h/n$a;)V

    .line 272
    invoke-static {}, Lcom/roblox/client/i/g;->a()Lcom/b/a/a/k;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/b/a/a/k;->a(Lcom/b/a/a/i;)V

    .line 274
    :cond_0
    return-void
.end method

.method protected getEditTextView(Landroid/view/View;)Lcom/roblox/client/RbxKeyboard;
    .locals 3

    .prologue
    .line 146
    const v0, 0x7f0800ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/roblox/client/RbxKeyboard;

    .line 147
    invoke-virtual {v0}, Lcom/roblox/client/RbxKeyboard;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 148
    invoke-virtual {v0, v1}, Lcom/roblox/client/RbxKeyboard;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/roblox/client/RbxKeyboard;->setBackgroundColor(I)V

    .line 151
    invoke-virtual {p0}, Lcom/roblox/client/e;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "SourceSansPro-Regular.ttf"

    invoke-static {v0, v1, v2}, Lcom/roblox/client/components/m;->a(Landroid/widget/TextView;Landroid/content/Context;Ljava/lang/String;)V

    .line 153
    return-object v0
.end method

.method protected getShowKeyboardRunnable(ZLjava/lang/String;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/roblox/client/e$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/roblox/client/e$4;-><init>(Lcom/roblox/client/e;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public handleHideKeyboard()V
    .locals 1

    .prologue
    .line 127
    invoke-super {p0}, Lcom/roblox/client/FragmentGlView;->handleHideKeyboard()V

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/roblox/client/e;->a:Lcom/roblox/engine/components/NativeTextBoxInfo;

    .line 130
    return-void
.end method

.method protected initLoadingView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 2

    .prologue
    .line 59
    invoke-super {p0, p1, p2}, Lcom/roblox/client/FragmentGlView;->initLoadingView(Landroid/view/LayoutInflater;Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 61
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 63
    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/roblox/client/e;->c()V

    .line 43
    invoke-virtual {p0}, Lcom/roblox/client/e;->getActivity()Landroid/support/v4/app/h;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/support/v4/app/h;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/roblox/client/e$1;

    invoke-direct {v1, p0}, Lcom/roblox/client/e$1;-><init>(Lcom/roblox/client/e;)V

    .line 46
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/roblox/client/FragmentGlView;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onGameLoaded(J)V
    .locals 3

    .prologue
    .line 103
    invoke-super {p0, p1, p2}, Lcom/roblox/client/FragmentGlView;->onGameLoaded(J)V

    .line 106
    invoke-virtual {p0}, Lcom/roblox/client/e;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 107
    const-string v0, "rbx.glview"

    const-string v1, "onGameLoaded() fragment not attached"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/roblox/client/e;->mGlobalLayoutTool:Lcom/roblox/engine/components/a;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/roblox/client/e;->mGlobalLayoutTool:Lcom/roblox/engine/components/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/roblox/engine/components/a;->a(Z)V

    goto :goto_0
.end method

.method public onLuaTextBoxChanged(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/roblox/client/FragmentGlView;->onLuaTextBoxChanged(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/roblox/client/e;->mUIThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/roblox/client/e$3;

    invoke-direct {v1, p0, p1}, Lcom/roblox/client/e$3;-><init>(Lcom/roblox/client/e;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 142
    return-void
.end method

.method public onLuaTextBoxPositionChanged()V
    .locals 4

    .prologue
    .line 158
    invoke-super {p0}, Lcom/roblox/client/FragmentGlView;->onLuaTextBoxPositionChanged()V

    .line 160
    invoke-static {}, Lcom/roblox/engine/jni/NativeGLInterface;->nativeGetTextBoxInfo()Lcom/roblox/engine/components/NativeTextBoxInfo;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/roblox/client/e;->a:Lcom/roblox/engine/components/NativeTextBoxInfo;

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/roblox/client/e;->a:Lcom/roblox/engine/components/NativeTextBoxInfo;

    invoke-virtual {v0, v1}, Lcom/roblox/engine/components/NativeTextBoxInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iput-object v0, p0, Lcom/roblox/client/e;->a:Lcom/roblox/engine/components/NativeTextBoxInfo;

    .line 180
    iget-object v1, p0, Lcom/roblox/client/e;->mUIThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/roblox/client/e$a;

    iget-object v3, p0, Lcom/roblox/client/e;->mGlEditTextView:Lcom/roblox/client/RbxKeyboard;

    invoke-direct {v2, p0, v0, v3}, Lcom/roblox/client/e$a;-><init>(Lcom/roblox/client/e;Lcom/roblox/engine/components/NativeTextBoxInfo;Landroid/widget/EditText;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 77
    invoke-super {p0}, Lcom/roblox/client/FragmentGlView;->onStart()V

    .line 79
    invoke-static {}, Lcom/roblox/client/b;->bl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/roblox/client/e;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/roblox/client/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/util/j;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const-string v0, "rbx.glview"

    const-string v1, "onStart() resumeRendering Lua App"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-virtual {p0}, Lcom/roblox/client/e;->resumeRenderingIfStopped()V

    .line 86
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/roblox/client/FragmentGlView;->onStop()V

    .line 92
    invoke-static {}, Lcom/roblox/client/b;->bl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/roblox/client/e;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/roblox/client/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/roblox/client/util/j;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const-string v0, "rbx.glview"

    const-string v1, "onStop() stopRendering Lua App"

    invoke-static {v0, v1}, Lcom/roblox/client/util/g;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {p0}, Lcom/roblox/client/e;->stopRendering()V

    .line 99
    :cond_0
    return-void
.end method

.method public shouldRespectDatamodelOrientation()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method
